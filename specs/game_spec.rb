require 'minitest/autorun'
require_relative '../models/game'

class TestGame < Minitest::Test

  def test_rock_scissors
    rps = Game.new("Rock", "Scissors")
    assert_equal("Rock wins hand1 won", rps.play)
  end
  
  def test_scissors_rock
    rps = Game.new("Scissors", "Rock")
    assert_equal("Rock wins hand2 won", rps.play)
  end

  def test_rock_paper
    rps = Game.new("Rock", "Paper")
    assert_equal("Paper wins hand2 won", rps.play)
  end

  def test_paper_rock
    rps = Game.new("Paper", "Rock")
    assert_equal("Paper wins hand1 won", rps.play)
  end

  def test_scissors_paper
    rps = Game.new("Scissors", "Paper")
    assert_equal("Scissors wins hand1 won", rps.play)
  end

  def test_paper_scissors
    rps = Game.new("Paper", "Scissors")
    assert_equal("Scissors wins hand2 won", rps.play)
  end

  def test_draw__paper
    rps = Game.new("Paper", "Paper")
    assert_equal("draw", rps.play)
  end

  def test_draw__scissors
    rps = Game.new("Scissors", "Scissors")
    assert_equal("draw", rps.play)
  end

  def test_draw__rock
    rps = Game.new("Rock", "Rock")
    assert_equal("draw", rps.play)
  end
  

end