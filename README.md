# Ruby Slack Bot Project- Globus-bot

![scr](https://user-images.githubusercontent.com/31889642/93992741-f7aa1380-fd9e-11ea-94d2-03541d76efc2.png)

## Built With 

* Ruby
* dotenv gem
* restcountry gem
* slack-ruby-bot gem


## Prerequisities

To get this project set up on your local machine, follow these simple steps:

## Installation

1. Open Terminal.
2. Navigate to your desired location to download the contents of this repository.
3. Copy and paste the following code into the Terminal: git clone git@github.com:MkrtichSargsyan/slack-bot.git
4. Run ```cd globus-slack-bot```.
5. Run ```bundle install``` to get the necessary gems.
6. Create a [workspace](https://slack.com/get-started#/create) and follow the instructions and get a 'OAuth Access Token'.
7. Create .env file in your project folder, copy your TOKEN to that .env file and paste it as ```SLACK_API_TOKEN = your-token-here```
8. Run ```rackup``` from your terminal window to start running the project.
9. Open the Slack and go to workspace page. Invite your bot to your page.

## List of available commands:

```@globus help``` Shows information about bot commands
```@globus countries``` Shows a list of all available countries
```@globus <country name>``` Shows the capital of any particular country
```@globus <country name> population``` Shows the population of any particular country

## Author

👤 **Mkrtich Sargsyan**

- Github: [@githubhandle](https://github.com/MkrtichSargsyan)
- Twitter: [@twitterhandle](https://twitter.com/MkrtichSargsyan)
- Linkedin: [linkedin](https://www.linkedin.com/in/mkrtich-sargsyan-921ab0152/)
- Email:  mkrtichsargsyan24@gmail.com

## Show your support

Give a ⭐️ if you like this project!

## 📝 License

This project is [MIT](lic.url) licensed.