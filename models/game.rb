class Game

  def initialize (hand1, hand2)
    @hand1 = hand1
    @hand2 = hand2
  end
  
  def play
    if @hand1 == "Rock" && @hand2 == "Rock"
      return "draw"
    elsif @hand1 == "Paper" && @hand2 == "Paper"
      return "draw"
    elsif @hand1 == "Scissors" && @hand2 == "Scissors"
      return "draw"
    elsif @hand1 == "Rock" && @hand2 == "Scissors"
      return "Rock wins hand1 won"
    elsif @hand1 == "Scissors" && @hand2 == "Rock"
      return "Rock wins hand2 won"
    elsif @hand1 == "Rock" && @hand2 == "Paper"
      return "Paper wins hand2 won"
    elsif @hand1 == "Paper" && @hand2 == "Rock"
      return "Paper wins hand1 won"
    elsif @hand1 == "Scissors" && @hand2 == "Paper"
      return "Scissors wins hand1 won"
    elsif @hand1 == "Paper" && @hand2 == "Scissors"
      return "Scissors wins hand2 won"
    else
      return "Uh oh. Something went wrong"
    end
  end

end
