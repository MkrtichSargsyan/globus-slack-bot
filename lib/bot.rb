module SenseiBot
  class Bot < SlackRubyBot::Bot
    command 'call', '呼び出し' do |client, data, _match|
      client.say(channel: data.channel, text: 'called')
    end
  end
end