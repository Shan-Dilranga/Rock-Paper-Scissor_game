
import:py random;

glob i:int=0;
walker Creater {
    can do with `root entry;
}

node play {
    has user:str = input(str("r for rock, p for paper, s for scissor \n\t select your choice : ")),
        opponent:str= random.choice(['r','p','s']),
        val:int=0;
    # can printnode with Creater entry{
    #     print(f"Node no: {self.val}");
    # }
    can compete with Creater entry; 
}

:walker:Creater:can:do {
    :g:i;
    here ++> play(val=i);
     visit [-->];    
}

:node:play:can:compete {
    player=self.user;
    opponent = self.opponent;
    can is_won(usr:str,opt:str);
    # print(f"Node no: {self.val}");
    if (player == 'r') or (player =='s') or (player =='p'){
        if player == opponent{print("\nTie\n");}
        elif is_won(player,opponent){print("\nYou Won\n");}
        else{ print("\nOpponent Won\n");}

        print(f"Your answer:{player}\nOppenent answer:{opponent}\n");

        :can:is_won(usr:str,opt:str){
            if (player == 'r' and opponent == 's') or (player == 'p' and opponent == 'r') or (player == 's' and opponent == 'p'){
                return True;
            }
        }
    }else{print("\nPlease Enter Valid Input:");}
}

with entry {
    print("\n\tRock Paper Scissor Game\n");
    while True{
        Options = input(str('\nEnter option number\n\t1.Play\n\t2.Quit\n\nOption :'));
        if Options == '1'{
           root spawn |> Creater;# spawn will iniiate the walker creater from root node
        }elif Options == '2'{break;} else{print("\n\tEnter valid option number \n");}
        i+=1;
    }
}
