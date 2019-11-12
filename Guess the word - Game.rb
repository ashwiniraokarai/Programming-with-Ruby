#User gets 3 chances to guess the secret word

secretWord = "ruby"
userInput = "";             #Receive this every time the user attempts (3 attempts allowed)
attempt = 1;

while userInput != secretWord and attempt <= 3 
        puts("Guess the word within 3 attempts. Attempt no: " + attempt.to_s);
        userInput = gets.chomp().downcase();
        attempt += 1;
end

if (userInput == secretWord)
    puts("You won");
else
    puts("Sorry, you lost! Restart the game and try again.")
end