# responds to help command
class Bot < SlackRubyBot::Bot
  help do
    title 'Globus-bot'
    desc 'This bot is for finding capitals. Write the name of the country and it will return its capital'

    command 'countries' do
      title 'countries'
      desc 'Shows a list of all available countries'
      long_desc 'Choose one of the country names to see its capital'
    end

    command 'Armenia' do
      title 'Armenia'
      desc 'Yerevan'
      long_desc 'Yerevan is capital of Armenia'
    end

    command 'Bangladesh' do
      title 'Bangladesh'
      desc 'Dhaka'
      long_desc 'Dhaka is capital of Bangladesh'
    end

    command 'Germany population' do
      title 'Germany population'
      desc 'Shows the population of Germany'
      long_desc 'Search for <country name> population to see its population'
    end
  end
end
