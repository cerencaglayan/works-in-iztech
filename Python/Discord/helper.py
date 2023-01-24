





def hasCommand(command):
    file = open("Python\Discord\Commands\commands.txt")

    lines = [line.rstrip('\n') for line in file]

    for line in lines:
        if (command in line):
            return True

    return False
    

def show_help_command(message):

    message_for_part = "--------------------------------------------------------------------------\n"

    file = open("Python\Discord\Commands\commands.txt")

    lines = [line.rstrip('\n') for line in file]

    for line in lines:
        if(message in message_for_part):
            if(line =="--------------------------------------------------------------------------" ):
                message_for_part+=line+"\n"
                break
            else:
                message_for_part+=line+"\n"

        if message in line:
            message_for_part+=line+"\n"

    return message_for_part


def show_help_message(message):
    message_by_parts = message.split("-")
    print(message_by_parts)
    message_will_send = ""
    if message == "$help":
        message_will_send="Plase type $help-command for help. (For all, type $help-all) ."
        return message_will_send

    if (message_by_parts[1] == "all"):
        file = open("Python\Discord\Commands\commands.txt")
        message_will_send = file.read()
    else:
        try:

            if (hasCommand(message_by_parts[1])):

                message_part = "$"+message_by_parts[1]
                message_will_send = show_help_command(message_part)
        except:
            pass


    return message_will_send
