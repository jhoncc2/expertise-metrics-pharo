meta-data
description ^ '! Expertise Discord Bot

There is an example of a bot, that listen to incoming messages and answer the question Who is expert in ...?

[[[
bot := DSBot new.
bot token: ''BOT-TOKEN''.
bot connect.

answer := ExpDiscordAnswer new bot: bot; yourself.

bot announcer 
	when: DSGatewayMessageAnnouncement 
	do: [ :ann | 
		ExpDiscordQuestion 
			message: ann message
			answer: answer ].
]]]
'