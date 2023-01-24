import requests
import json


def menu():
    menu = """
------------------------------------------------------
HERE'S WHAT CAN I DO:                                 
1- GUESS THE WORD INSIDI THE QUOTE THAT IM GONNA SAY! 
2- JUST GIVE ME GODDAMN QUOTE:                        
                                                       
------------------------------------------------------

FOR 1 : $quote1
FOR 2 : $quote2

    """
    return menu



def get_quote():
    response = requests.get("https://zenquotes.io/api/random")
    json_data = json.loads(response.text)
    quote = json_data[0]['q'] + " - " + json_data[0]['a']
    return quote


def guess_quote():

    answer = ""

    quote = get_quote()

    word = input("Write the word \n")

    if word.isalpha():
        if word.lower() in quote.lower().split(" "):
            answer += "Success! \n"
        else:
            answer += "Maybe next time.. \n"

    answer += quote
    return answer
