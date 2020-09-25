require_relative './helper'

# Country class
class Country
  extend Helper
  include Helper

  attr_reader :country_name, :country_population, :country_capital

  def initialize(name)
    country_obj = single_country(name)
    @country_name = country_obj['name']
    @country_population = country_obj['population']
    @country_capital = country_obj['capital']
  end

  def self.all_countries_names
    all_countries = create_countries_array
    countries_names(all_countries)
  end
end
