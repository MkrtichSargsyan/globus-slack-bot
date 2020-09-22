require 'restcountry'

module GlobusBot
  # find capital by country name
  class GetCapital < SlackRubyBot::Commands::Base
    scan(/([A-Z]{2,5})/) do |client, data, _match|
      p '//////////////////////////////////////////'
      p SlackRubyBot.config.user
      text = data['blocks'][0]['elements'][0]['elements'][1]['text'].strip
      country = Restcountry::Country.find_by_name(text) || nil
      message = country ? "Capital of #{text.capitalize} is #{country.capital}" : "Sorry I can not find (#{text}) capital"
      client.say(channel: data.channel, text: message)
    end
  end
end
