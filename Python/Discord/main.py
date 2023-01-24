import discord
import quotes as q
import myserver
import helper


intents = discord.Intents.default()  
intents.message_content = True
client = discord.Client(intents = intents)


# callback
@client.event
async def on_ready():
    print('We have logged in as {0.user}'.format(client))


@client.event
async def on_message(message):

    if message.author == client.user:
        return 'Hello!'

    if message.content.startswith('$hello'):
        await message.channel.send('Hello!')
        print('Hello sent!')

    if message.content.startswith('$help'):
        await message.channel.send(helper.show_help_message(message.content))


        

    if message.content.startswith('$quote'):
        if message.content == "$quote1":
            await message.channel.send(q.guess_quote())
            return
            
        elif message.content == "$quote2":
            await message.channel.send(q.get_quote())
            return
        
        await message.channel.send(q.menu())



       


#myserver.start()
client.run("MTA1NzM3NTI1NDg5ODU1MjkyMg.Gv7y-C.Z9KceQlNLaHYFtL8xBOmu9FkTpaOUFZqFPm2xs")

