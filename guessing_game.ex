defmodule GuessingGame do
def guess(a, b) when a > b, do: guess(b, a) #guard checks that high is the bigger of the two numbers 

def guess(low, high) do
   answer = IO.gets ("Hmm... maybe you're thinking of #{mid(low, high)}?\n")
   case String.trim(answer) do
    "bigger" -> bigger(low, high)
    "smaller" -> smaller(low, high)
    "yes" -> "I knew I could guess your number"
    _ -> IO.puts ~s{Type "bigger", "smaller", or "yes"}
        guess(low, high) 
    end
end


def mid(low, high) do
    div(low + high, 2) # divide low + high by 2
 end 
 def bigger(low, high) do
     newLow = min(high, mid(low, high) + 1) # the min() get the min of 2 numbers 
     guess(newLow, high)
 end
def smaller(low, high) do
    newHigh = max(low, mid(low, high) -1)
    guess(low, newHigh)
end
end
