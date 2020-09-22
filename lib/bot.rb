module GlobusBot
  # responds to help command
  class Bot < SlackRubyBot::Bot
    help do
      title 'Globus-bot'
      desc 'This bot is for finding capital. Write the name of the country and it will return its capital'

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
    end
  end
end
