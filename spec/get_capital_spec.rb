require 'rspec/expectations'

RSpec::Matchers.define :respond_with_slack_message do |expected|
  include SlackRubyBot::SpecHelpers

  match do |actual|
    client = respond_to?(:client) ? send(:client) : SlackRubyBot::Client.new

    message_command = SlackRubyBot::Hooks::Message.new
    channel, user, message, attachments = parse(actual)

    allow(client).to receive(:message) do |options|
      @messages ||= []
      @messages.push options
    end

    message_command.call(client,
                         Hashie::Mash.new(text: message, channel: channel, user: user, attachments: attachments))

    matcher = have_received(:message).once
    matcher = matcher.with(hash_including(channel: channel, text: expected)) if channel && expected

    expect(client).to matcher

    true
  end

  failure_message do |_actual|
    message = "expected to receive message with text: #{expected} once,\n received:"
    message += @messages&.any? ? @messages.inspect : 'none'
    message
  end

  describe SlackRubyBot::Commands do
    # it 'should return Yerevan if search for Armenia' do
    #   expect(message: "#{SlackRubyBot.config.user} Armenia").to respond_with_slack_message
    # end
    it 'says hi' do
      expect(message: "#{SlackRubyBot.config.user} armenia").to respond_with_slack_message('Yerevan')
    end
  end
end
