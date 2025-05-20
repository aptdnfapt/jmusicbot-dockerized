# Dockerized JMusicBot

A simple way to run JMusicBot using Docker for easy setup and management on Linux systems.

## Prerequisites

Before you begin, ensure you have the following installed on your Linux system:
- [Git](https://git-scm.com/book/en/v2/Getting-Started-Installing-Git) (for cloning the repository)
- [Docker Engine](https://docs.docker.com/engine/install/) (for running the bot in a container)

## Setup Guide for Linux

Follow these steps to get your JMusicBot instance up and running:

### 1. Get a Discord Bot Token
- Follow the official guide to create a Discord application and retrieve your bot token: [JMusicBot: Getting a Bot Token](https://jmusicbot.com/getting-a-bot-token/)
- After creating the bot, you'll need to invite it to your Discord server. You can do this by generating an OAuth2 URL. Go to your Discord application's page, navigate to "OAuth2" -> "URL Generator", select the `bot` scope, and then choose the necessary permissions for JMusicBot (e.g., `Send Messages`, `Connect`, `Speak`, `Read Message History`, etc.). Copy the generated URL and open it in your browser to invite the bot.

### 2. Clone the Repository
Open your terminal and clone this repository. 
```bash
git clone 
```
then go inside the jmusicbot folder/dir and install 
```bash
cd $HOME/jmusicbot
chmod +x install.sh
```
### before installing setup a config.txt there is a example one so just rename it 
```bash
mv example.config.txt config.txt
```
### now edit this file(config.txt) using your editor and add your token and owner id other configaration that you may like 

lastly now run the code 
```bash
./install.sh
```