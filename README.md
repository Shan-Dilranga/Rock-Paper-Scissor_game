# Rock-Paper-Scissor_game
Implementing rock, paper, scissor game using Jaclang and Spatial Data Structure.<br/>

**Imports**: The code begins with importing the random module from Python, which is used to generate random choices for the opponent's move.<br/>
**Global Variable**: It declares a global variable i of type integer and initializes it to 0.It uses to count node number<br/>
**Walker Definition**: Defines a walker named Creator. This walker has the capability do, which allows it to perform actions with the root entry.<br/>
**Node Definition**: Defines a node named play. Each play node represents a single round of the game.<br/>
#### It has attributes:
* **user**: Represents the user's choice input.<br/>
* **opponent**: Represents the opponent's randomly chosen move.<br/>
* **val**: Represents the value of the node.<br/>
#### Walker Behavior:<br/>
Defines the behavior of the Creater walker's do capability. It increments the global variable i and spawns a play node with the current value of i.<br/>
#### Node Behavior:<br/>
Defines the behavior of the play node's compete capability. It:<br/>
* Assigns the user's input to the player variable and generates a random choice for the opponent's move.<br/>
* Checks if the player's input is valid (either 'r', 'p', or 's').<br/>
* Checks if the player wins, loses, or if it's a tie based on the rules of Rock-Paper-Scissors.<br/>
* Prints the result along with both the player's and opponent's choices.<br/>
* Defines an inner capability is_won() to check if the player wins against the opponent.<br/>
#### Main Loop:<br/> 
Starts the main loop with the with entry block. It:<br/>
* Displays a welcome message for the Rock-Paper-Scissors game.<br/>
* Enters a loop that prompts the user to choose between playing a round or quitting the game.<br/>
* If the user chooses to play, it spawns a Creator walker, initiating a new round of the game. If the user chooses to quit, the loop breaks.<br/>
* The variable i is incremented after each round.<br/>
#### Overall, this code implements a basic Rock-Paper-Scissors game where the user can play multiple rounds until they choose to quit. <br/>
![Screenshot (56)](https://github.com/Shan-Dilranga/Rock-Paper-Scissor_game/assets/84151287/d51a40b0-a020-4206-83c7-f18e2b683b8e) <br/>

**Note :-** <br/>
* We can initialize variables inside a node. But without initializing a function, we cannot do any operation inside a node.<br/>
* if you want to perform a function inside a if statement of another function, before that you have to initialize the function.
![Screenshot (57)](https://github.com/Shan-Dilranga/Rock-Paper-Scissor_game/assets/84151287/9dd733f4-7e55-42df-b80e-e25dc48c4a81)

