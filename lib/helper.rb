require 'restcountry'
# fetch data from restcountry api and create helper methods
module Helper
  def create_countries_array
    JSON.parse(Restcountry::Country.all.to_json)
  end

  def countries_names(countries)
    countries.map { |c| c['name'] }
  end

  def single_country(name)
    # transfering fetched data to json object
    value = create_countries_array.find { |el| el['name'] == name }
    JSON.parse(value.to_json)
  end
end
