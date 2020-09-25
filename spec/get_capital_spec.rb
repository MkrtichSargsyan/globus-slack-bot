# rubocop:disable Layout/LineLength
require 'rspec/expectations'

begin
  require 'slack-ruby-bot/rspec'
rescue LoadError
  system 'bundle install'
  system 'rspec'
  exit
end

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

    message_command.call(client, Hashie::Mash.new(text: message, channel: channel, user: user, attachments: attachments))

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
end

describe SlackRubyBot::Commands do
  it 'retuns Yerevan' do
    expect(message: "#{SlackRubyBot.config.user} countries").to respond_with_slack_message
  end

  it "should reply 'I don't understand that command!'" do
    expect(message: "#{SlackRubyBot.config.user} something").to respond_with_slack_message
  end

  it 'should show population of Albania' do
    expect(message: "#{SlackRubyBot.config.user} Albania population").to respond_with_slack_message
  end

  it 'should show all available methods' do
    expect(message: "#{SlackRubyBot.config.user} help").to respond_with_slack_message
  end
end

# rubocop:enable Layout/LineLength
