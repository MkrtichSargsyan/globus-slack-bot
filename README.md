# Ruby Slack Bot Project- Globus-bot

This is a slack bot project created with ruby. I have created a slack ruby bot and called it 'globus-bot'. This bot is for showing capitals for every country. 

![scr](https://user-images.githubusercontent.com/31889642/93992741-f7aa1380-fd9e-11ea-94d2-03541d76efc2.png)

## Built With 

* Ruby
* dotenv gem
* restcountry gem
* slack-ruby-bot gem

## Video Explanation

Here is the [video explanation](https://www.loom.com/share/9b2cad839523432293abd9d1ae8ae43b) of this project.

## Prerequisities

To get this project set up on your local machine, follow these simple steps:

## Installation

1. Open Terminal.
2. Navigate to your desired location to download the contents of this repository.
3. Copy and paste the following code into the Terminal: git clone ```https://github.com/MkrtichSargsyan/globus-slack-bot```
4. Run ```cd globus-slack-bot```.
5. Run ```bundle install``` to get the necessary gems.
6. Create a new slack [workspace](https://slack.com/get-started#/create) and give it a name
7. Open [bot integration](http://slack.com/services/new/bot) link, and choose your created workspace from the top right corner, give a username for your bot and click on ```Add bot integration``` button.
8. Copy the given token, also you can change the bot username and give an avatar to your bot.
9. Click on ```Save Integration``` button.
10. Create .env file in your project folder, copy your TOKEN to that .env file and paste it as ```SLACK_API_TOKEN = your-token-here```
11. Run ```rackup``` from your terminal window to start running the project.
12. Open the Slack and go to workspace page. Invite your bot to your page.

## List of available commands:

```@globus help``` Shows information about bot commands <br>
```@globus countries``` Shows a list of all available countries <br>
```@globus <country name>``` Shows the capital of any particular country <br>
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