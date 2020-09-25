require_relative './helper'
require_relative './country'

# find capital by country name
class GetCapital < SlackRubyBot::Commands::Base
  all_countries_names = Country.all_countries_names

  def get_country_by_name(name)
    single_country(name)
  end

  command 'countries' do |client, data, _match|
    client.say(channel: data.channel, text: all_countries_names.join(', '))
  end

  all_countries_names.each do |name|
    # show coutry population
    command "#{name} population" do |client, data, _match|
      country = Country.new(name)
      message = "population of #{country.country_name} is #{country.country_population} people"
      client.say(channel: data.channel, text: message)
    end

    command name do |client, data, _match|
      country = Country.new(name)
      message = "Capital of #{country.country_name} is #{country.country_capital}"
      client.say(channel: data.channel, text: message)
    end
  end
end
