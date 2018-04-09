# expertise-metrics-pharo

## Installation

```Smalltalk
Metacello new
    baseline: #ExpertiseMetricsPharo;
    repository: 'github://jhoncc2/expertise-metrics-pharo/src';
    load.
```

## Usage

```Smalltalk
bot := DSBot new.
bot token: 'BOT-TOKEN'.
bot connect.

answer := ExpDiscordAnswer new bot: bot; yourself.

bot announcer 
    when: DSGatewayMessageAnnouncement 
    do: [ :ann | 
        ExpDiscordQuestion 
            message: ann message
            answer: answer ].
```

Write a message `Who is expert in Playground?` to channel where the bot listens to.
