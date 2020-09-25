require_relative '../lib/country'

RSpec.describe 'country methods' do
  it 'should return array of countries' do
    expect(Country.all_countries_names.class).to eql(Array)
  end
end
