# JMusicBot Installation Guides

This repository provides guides for installing and running JMusicBot using Docker.

## Prerequisites

Ensure you have the necessary prerequisites based on your operating system.

- **Linux:**
  - [Git](https://git-scm.com/book/en/v2/Getting-Started-Installing-Git)
  - [Docker Engine](https://docs.docker.com/engine/install/)

- **Windows:**
  - [Git](https://git-scm.com/book/en/v2/Getting-Started-Installing-Git)
  - [Docker Desktop for Windows](https://docs.docker.com/desktop/install/windows-install/)

## Setup Guide for Linux (using Docker)

This guide explains how to set up JMusicBot on Linux using Docker.

### 1. Get a Discord Bot Token

Follow the official guide to create a Discord application and retrieve your bot token: [JMusicBot: Getting a Bot Token](https://jmusicbot.com/getting-a-bot-token/)

After creating the bot, you'll need to invite it to your Discord server. You can do this by generating an OAuth2 URL. Go to your Discord application's page, navigate to "OAuth2" -> "URL Generator", select the `bot` scope, and then choose the necessary permissions for JMusicBot (e.g., `Send Messages`, `Connect`, `Speak`, `Read Message History`, etc.). Copy the generated URL and open it in your browser to invite the bot.

### 2. Clone the Repository

Open your terminal and clone this repository:

```bash
git clone https://github.com/aptdnfapt/jmusicbot-dockerized.git
cd jmusicbot-dockerized
```

### 3. Configure the Bot

Rename the example configuration file and edit it to add your bot token and owner ID:

```bash
mv example.config.txt config.txt
```

Edit `config.txt` using your preferred text editor and add your bot token, owner ID, and any other desired configurations.

### 4. Run the Docker Container

Pull the Docker image and run the container. Open your terminal in the `jmusicbot-dockerized` directory and execute the following commands:

```bash
docker pull ghcr.io/aptdnfapt/jmusicbot-image:0.4.3.8

docker run -d \
  --name jmusicbot \
  --restart always \
  -v $PWD:/app \
  ghcr.io/aptdnfapt/jmusicbot-image:0.4.3.8
```
Note: The `${PWD}` variable represents the current working directory, which is mapped to `/app` inside the container.

## Setup Guide for Windows (using Docker)

This guide explains how to set up JMusicBot on Windows using Docker.

### 1. Get a Discord Bot Token

Follow the official guide to create a Discord application and retrieve your bot token: [JMusicBot: Getting a Bot Token](https://jmusicbot.com/getting-a-bot-token/)

After creating the bot, you'll need to invite it to your Discord server. You can do this by generating an OAuth2 URL. Go to your Discord application's page, navigate to "OAuth2" -> "URL Generator", select the `bot` scope, and then choose the necessary permissions for JMusicBot (e.g., `Send Messages`, `Connect`, `Speak`, `Read Message History`, etc.). Copy the generated URL and open it in your browser to invite the bot.

### 2. Clone the Repository

Open PowerShell or Command Prompt and clone this repository:

```bash
git clone https://github.com/aptdnfapt/jmusicbot-dockerized.git
cd jmusicbot-dockerized
```

### 3. Configure the Bot

Rename the example configuration file and edit it to add your bot token and owner ID:

```bash
move example.config.txt config.txt
```

Edit `config.txt` using your preferred text editor and add your bot token, owner ID, and any other desired configurations.

### 4. Run the Docker Container

Pull the Docker image and run the container. Open PowerShell or Command Prompt in the `jmusicbot-dockerized` directory and execute the following command:

```bash
docker pull ghcr.io/aptdnfapt/jmusicbot-image:0.4.3.8

docker run -d `
  --name jmusicbot `
  --restart always `
  -v ${PWD}:/app `
  ghcr.io/aptdnfapt/jmusicbot-image:0.4.3.8
```
Note: The `${PWD}` variable in PowerShell represents the current working directory, which is mapped to `/app` inside the container. If you are using Command Prompt, you might need to use `%cd%` instead of `${PWD}` or provide the full path to the directory.

## Removing the Bot (Docker)

To completely remove the Dockerized JMusicBot and its image from your system (Linux or Windows), follow these steps:

1. **Stop the Container:**
   ```bash
   docker stop jmusicbot
   ```

2. **Remove the Container:**
   ```bash
   docker rm jmusicbot
   ```

3. **Remove the Docker Image:**
   ```bash
   docker rmi ghcr.io/aptdnfapt/jmusicbot-image:0.4.3.8
   ```
   Note: Replace `0.4.3.8` with the actual version of the image you want to remove if it's different.

This will stop and remove the running JMusicBot container and delete the Docker image from your system. You can also remove the `jmusicbot-dockerized` directory if you cloned the repository.
