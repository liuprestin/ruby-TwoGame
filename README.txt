 
Create a 2-Player math game where players take turns to answer simple math addition problems. A new math question is generated for each turn by picking two numbers between 1 and 20. The player whose turn it is is prompted the question and must answer correctly or lose a life.

- there are 2 players
- Player can make 3 wrong guesses before game over
- the game will loop (turn):
    -   each loop it will prompt a math question (picking 2 numbers between 1 and 20)
    - we can assume that the prompt will have + , - , *, /
    - each loop will display # of lives
    - when one


Classes:

- Player
state:
    - lives
    - correct guesses

- Game? (main)
    - there is always a main game loop

- display
    - display question
    - get_ans
    - display lives
    - display winner


- Turn
    - current player
    - current question


- Question
   - number 1
   - number 2
   - operation
