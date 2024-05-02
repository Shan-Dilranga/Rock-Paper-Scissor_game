
import:py random;

walker Creater {
    can do with `root entry;
}

node play {
    has user:str = input(str("r for rock, p for paper, s for scissor \n select your choice : ")),
        opponent:str= random.choice(['r','p','s']);

    can compete with Creater entry;
}

:walker:Creater:can:do {
    
    here ++> play();
    visit [-->];
}

:node:play:can:compete {
    player=self.user;
    opponent = self.opponent;
    can is_won(usr:str,opt:str);

    if player == opponent{ print("\nTie\n");}
    elif is_won(player,opponent){ print("\nYou Won\n");}
    else{ print("\nOpponent Won\n");}

    print(f"Your answer:{player}\nOppenent answer:{opponent}");

    :can:is_won(usr:str,opt:str){
        if (player == 'r' and opponent == 's') or (player == 'p' and opponent == 'r') or (player == 's' and opponent == 'p'){
            return True;
        }
    }
}

with entry {
# spawn will iniiate the walker Adder from root node
root spawn |> Creater;
}