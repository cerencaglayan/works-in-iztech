#270201059
import random

class Gamebot:

    def __init__(self, play_hand, stack):
        self.play_hand = play_hand                  # a reference to the player's hand
        self.stack = stack                          # a reference to the stack
        self.count_deck = [['b',1],['b',1],['b',1],['b',2], # a list to count the remaining
                           ['b',2],['b',3],['b',3],['b',4], # cards in the deck
                           ['w',1],['w',1],['w',1],['w',2],
                           ['w',2],['w',3],['w',3],['w',4]]
        for card in play_hand:                      # bot has already seen the player's hand,so it knows
            self.update_count_deck(card)            # that those cards are not in the deck anymore.
        self.hand = [['!',-1],['!',-1],['!',-1]]    # bot's hand. '!' indicates unknown color,
                                                    # -1 indicates unknown value

    def get_tip(self, tip):
        
        tips = list() # I created a list.
        tips = tip.split(",") # I assingned my tips to my list named tips.
        main_tip = tips[-1] # This is the actual tip , I indicated.
        if main_tip.isnumeric():
            for a in tips[:-1]:  # I changed the self.hand with looking the location.
                self.hand[int(a)-1][1] = int(main_tip)
        else:
            for a in tips[:-1]:# I changed the self.hand with looking the location.
                self.hand[int(a)-1][0] = main_tip
 
    def update_count_deck(self,card):  
        cards = self.play_hand
        if play_hand == cards:
            if len(deck)<10:
                self.count_deck.remove(card)
        else:
            self.count_deck.remove(card)

    def update_hand(self,num):
        self.hand.remove(self.hand[num-1])
    
        if len(deck) >0:
            self.hand.append(['!',-1])
        else:
            print("The Deck is empty.")
            
        # input: num: location of the card to be removed from the bot's hand
        # output: none
        # A card is removed from the bot's hand according to the given input and a new one is appended.
    def give_tip(self):
        
        tip = "" # I created a string named tip so that i can add locations and tip to string and printed.
        color_,number_ = ["b","w"],[1,2,3,4] # Here are our colors and numbers.
        color,number = [],[] # 
        if len(self.play_hand)>0:
            for element in self.play_hand:
                color.append(element[0])
                number.append(element[1])
                
            color_count = [[color.count(i) for i in color_], [i for i in color_]]
            
            max_color = color_count[1][color_count[0].index(max(*color_count[0]))]
            num_count = [[number.count(i) for i in number_], [i for i in number_]]
            max_number = num_count[1][num_count[0].index(max(*num_count[0]))]
            
            if color.count(max_color) == number.count(max_number):
                
                lets_go = random.choice([max_color,max_number])
                if str(lets_go).isnumeric():
                    for q in range(len(self.play_hand)):
                        if self.play_hand[q][1] == lets_go:
                            tip+= str(q+1) +","
                else:
                    for q in range(len(self.play_hand)):
                        if self.play_hand[q][0] == lets_go:
                            tip+= str(q+1) +","
                tip += str(lets_go)
            elif color.count(max_color) > number.count(max_number):
                lets_go = max_color
                for q in range(len(self.play_hand)):
                    if self.play_hand[q][0] == lets_go:
                        tip+= str(q+1) +","
                tip += lets_go
            else:
                lets_go = max_number
                if str(lets_go).isnumeric():
                    for q in range(len(self.play_hand)):
                        if self.play_hand[q][1] == lets_go:
                            tip+= str(q+1) +","
                tip += str(lets_go)
        else:
            tip = "Player has no cards for giving a tip!"
        return tip 

        # BONUS: Smarter decision-making algorithms can be implemented.
    def pick_stack(self):
            # input: none
     
        # input: none
        location = -1
        card = []
        for element in self.hand:
            if element != ["!",-1] :
                if element[1] ==1 and stack == [[],[]]:
                    card = element[:]
                    location = self.hand.index(element)+1 
                elif element == ["b",1] and stack[0] == [] :
                    card = element[:]
                    location = self.hand.index(element)+1 
                elif  element == ["w",1] and stack[1] == []: 
                    card = element[:]
                    location = self.hand.index(element)+1                 
        for element in self.hand:
            if location == -1:
                if stack != [[],[]]:
                    if element[0] == "b" and stack[0] != []:
                        if element[1]-1 != stack[0][-1][1]:
                            location = -1
                        else:
                            location = self.hand.index(element)+1
                    elif element[0] =="w" and stack[1] != []:
                        if element[1]-1 != stack[1][-1][1]:
                            location = -1
                        else:
                            location = self.hand.index(element)+1
    
        return location
            
        
        # output: If possible, the location of the card to be placed in the stack, otherwise -1. Minimal
        # the requirement for this function is to find the card to be stacked with 100% certainty.
        
        # else:

        # BONUS: Smarter decision-making algorithms can be implemented.
        

    def pick_discard(self):
        # input: none
        listem = []
        eleman = []
        for a in self.hand:
            if a in self.stack:
                eleman = a[:]
            else:
                index = 0
                if a[0] == "!":
                    index += 1
                if a[1] == -1:
                    index += 1
                listem.append(index)
        
        if eleman == []:
            if len(listem)>1:
                eleman = self.hand[listem.index(max(*listem))]
            elif len(listem) ==1:
                eleman = self.hand[listem.index(listem[0])]
        return self.hand.index(eleman)+1
        
        # output: The location of the card to be discarded. Minimal requirement for this function is that,
        # if possible, the bot picks the card that is already in the stack. If this is not the case,
        # the bot picks the card of which it has minimum information.
        # BONUS: Smarter decision-making algorithms can be implemented.


def shuffle(deck):
    for a in range(len(deck)*15):
        b = random.choice(deck)
        deck.remove(b)
        deck.append(b)

    # shuffle the deck 
    # you are free to choose the algorithm you want
    # explain your shuffle algorithm in a comment



def print_menu():
    print("Hit 'v' to view the status of the game.")
    print("Hit 't' to spend a tip.")
    print("Hit 's' to try and stack your card.")
    print("Hit 'd' to discard your card and earn a tip.")
    print("Hit 'h' to view this menu.")
    print("Hit 'q' to quit.")


def update_hand(hand,deck,num):
    if len(deck)==0:
        print("Cards of deck has been used.")
    else:
        hand.append(deck[-1])
        deck.remove(deck[-1])
    element = hand[num-1]
    hand.remove(element) 
        
    return element
    # input: hand to be updated,current deck and the location of the card to be removed
    # output: removed card
    # This function is called when a card is played (either stacked or discarded). It removes
    # the played card from the hand. If there are any cards left in the deck, the top card
    # in the deck is drawn and appended to the hand.
    


def try_stack(card,stack,trash,lives):
    if card[0] == "b":
        if stack[0] == []:
            if card[1] == 1:
                stack[0].append(card)
            else:
                trash.append(card)
                lives-=1
        else:
            if  card[1]-1 == stack[0][-1][1]:
                stack[0].append(card)
            else:
                trash.append(card)
                lives-=1     
        
    elif card[0] == "w":
        if stack[1] == []:
            if card[1] == 1:
                stack[1].append(card)   
            else:
                trash.append(card)
                lives-=1 
        else:
            if  card[1]-1 == stack[1][-1][1] :
                stack[1].append(card)
            else:
                trash.append(card)
                lives-=1   
        
    else:
        stack[random.choice([1,0])].append(card)
    trash.sort()      
            
            
    return lives
    # input: the card to be stacked, current stack, current trash, number of lives
    # output: updated number of lives
    # This function tries to place the card in the stack. If successful, the card is appropriately
    # added to the stack and the updated stack is printed. Otherwise, the card is appended to the
    # trash, the trash is sorted for better viewing and number of lives is decreased by 1. A warning
    # and the current number of lives are printed.



def discard(card,trash,tips):
    # input: the card to be discarded, the current trash, number of tips
    # output: updated number of tips
    trash.append(card)
    trash.sort()
    tips += 1
    # This function appends the card to the trash, re-sorts it and increases the number of tips by 1.
    for element in range(len(trash)):
        
        if element == len(trash)-1:
            print(trash[element])
        else:
            print(trash[element],end=", ")
    print("Number of tips:",tips)
    return tips
    # The updated trash and the number of tips are printed.


print("Welcome! Let's play!")
print_menu()
deck = [['b',1],['b',1],['b',1],['b',2],['b',2],['b',3],['b',3],['b',4],
        ['w',1],['w',1],['w',1],['w',2],['w',2],['w',3],['w',3],['w',4]]
stack = [[],[]] #0 means black, 1 means white
trash = []
lives = 2
tips = 3
shuffle(deck)
# First hands are dealt.
comp_hand = deck[:3]
play_hand = deck[3:6]
del deck[0:6]
bot = Gamebot(play_hand,stack)  # Gamebot object is created.
turn = 0                        # 0 means player, 1 means computer. So for each game, the player starts.
while True:
    if turn == 0:
        if len(play_hand) == 0:
            turn=1
            continue
        inp = input("Your turn:")
        if inp == 'v':
            print("Computer's hand:", comp_hand)
            print("Number of tips left:", tips)
            print("Number of lives left:", lives)
            print("Current stack:")
            print("Black:", stack[0])
            print("White:", stack[1])
            print("Current trash:", trash)
        elif inp == "t":
            if tips > 0:
                turn = 1  
                tip = input("Playerın tipi:")
                tips -= 1
                print("Kalan tip:",tips)
                bot.get_tip(tip) 
                # Switch turns.
                # Take a tip from the player, give it to the bot, update and print the number of tips.
                
            else:
                print("Not possible! No tips left!")
        elif inp == "s":
            turn = 1
            card_num = int(input("Enter a location:"))
            
            _stabil_lives =0
            _stabil_lives = lives
        
            eleman = update_hand(play_hand, deck, card_num)
            bot.update_count_deck(eleman)
            lives =try_stack(eleman, stack, trash, lives)
            
            
          
            # Switch turns.
            # Take the location of the card to be stacked from the player,
            # update hands and bot's count_deck and try to stack the selected card.
        
        elif inp == "d":
            turn = 1     
            card_ = int(input("Discard kardı:"))
            tips = discard(play_hand[card_-1], trash, tips)  
            
            eleman = update_hand(play_hand, deck, card_)
            bot.update_count_deck(eleman)
                                 # Switch turns.
            # Take the location of the card to be discarded from the player,
            # update hands and bot's count_deck and discard the selected card.
            pass
        elif inp == "h":
            print_menu()
        elif inp == "q":
            break
        else:
            print("Please enter a valid choice (v,t,s,d,h,q)!")
    else:
        
        # A minimal strategy of the bot is given.
        # BONUS: Smarter rule sets can be implemented.
        if tips > 1  and len(play_hand)>0:
            print("Computer gives a tip:",bot.give_tip())
            tips-=1
            print("Remaning tips:",tips)
            # Take a tip from the bot. Update the number of tips. Print both
            # the given tip by the bot and the updated number of tips.
            
        else:
            num = bot.pick_stack()
            if num == -1:
                
                index = bot.pick_discard()
                print("Computer discards a card:",comp_hand[index-1])
                tips = discard(comp_hand[index-1], trash, tips)
                bot.update_hand(index)
                eleman = update_hand(comp_hand, deck, index)
                bot.update_count_deck(eleman)
                
            else:
                print("Computer stacks a card:",comp_hand[num-1])
                lives = try_stack(comp_hand[num-1], stack, trash, lives)
                bot.update_hand(num)
                eleman = update_hand(comp_hand, deck, num)
                bot.update_count_deck(eleman)
                
            # Check if bot can pick a card to stack.
            # If yes, update comp_hand, bot's hand and bot's count_deck and try to stack the selected card.
            # If no, make bot pick a card to discard. Update comp_hand, bot's hand and bot's count_deck
            # and discard the selected card.
            
        turn = 0        # Switch turns.
    score = sum([len(d) for d in stack])
    if lives==0:
        print("No lives left! Game over!")
        print("Your score is", score)
        break
    if len(comp_hand+play_hand)==0:
        print("No cards left! Game over!")
        print("Your score is", score)
        break
    if score == 8:
        print("Congratulations! You have reached the maximum score!")
        break
