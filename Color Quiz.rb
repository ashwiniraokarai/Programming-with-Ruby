
#class takes a question, expected result, actual result and tells whether actual response and expected response match
class Question
    attr_accessor(:expected, :question, :score);

    def initialize(expected, question)
        @expected = expected;
        @question = question;
        @result = false;
    end

    def evaluate()
        puts(@question);
        responseQuestion = gets.chomp();
        if(responseQuestion == @expected)
            result = true;
        end
        return result;
    end
end

#questions (strings) that we will utilize during class instantiation
question1 = "What color are apples?\n(a)red\n(b)blue\n(c)orange" 
question2 = "What color are bananas?\n(a)red(b)yellow(c)pink"
question3 = "What color are pears?\n(a)green-yellow\n(b)purple\n(c)black"

#array of objects (instantiation)
questions = [
    Question.new("a", question1),
    Question.new("b", question2),
    Question.new("a", question3)
];

totalScore = 0;

#increase score by 1 for every correct response
for question in questions
     if(question.evaluate)      #.evaluate is a method in the Question class, available to each question object
        totalScore += 1;
     end
end

#if ALL 3 reponses were correct, then declare the user a winner
if totalScore == 3 
    puts("Congrats, you won!");
else
    puts("You didn't win. Start over to try again.");
end