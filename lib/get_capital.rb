require 'restcountry'

module GlobusBot
  # find capital by country name
  class GetCapital < SlackRubyBot::Bot
    countries = JSON.parse(Restcountry::Country.all.to_json)
    cn = countries.map { |c| c['name'] }

    command 'countries' do |client, data, _match|
      client.say(channel: data.channel, text: cn.join(', '))
    end

    cn.each do |name|
      command "#{name} population" do |client, data, _match|
        country = Restcountry::Country.find_by_name(name) || nil
        country = JSON.parse(country.to_json)
        message = "population of #{name.capitalize} is #{country['population']} people"
        client.say(channel: data.channel, text: message)
      end

      command name do |client, data, _match|
        text = data['blocks'][0]['elements'][0]['elements'][1]['text'].strip
        country = Restcountry::Country.find_by_name(text) || nil
        notfind = "Sorry I can not find (#{text}) capital"
        message = country ? "Capital of #{text.capitalize} is #{country.capital}" : notfind
        client.say(channel: data.channel, text: message)
      end
    end
  end
end
