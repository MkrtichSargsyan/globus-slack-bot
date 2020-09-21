require 'restcountry'

module SenseiBot
  class Bot < SlackRubyBot::Bot
    scan(/([A-Z]{2,5})/) do |client, data, match|
      p '////////////////////////////////////////////////////////////////////////////////////'
      text = data['blocks'][0]['elements'][0]['elements'][1]['text'].strip
      country = Restcountry::Country.find_by_name(text)
      capital =  country.capital
      client.say(channel: data.channel, text: "Capital of #{text.capitalize()} is #{capital}")
    end
  end
end
