# magic_ball.rb

class MagicBall

  ANSWERS = ["Yes", "No", "Ask again later", "Maybe", "Future is hazy"]
  
  def ask question
    raise "Question has invalid format." unless question_valid question
    ANSWERS.sample
  end

  def question_valid question
    question.is_a?(String) && question[-1] == "?"
  end

  
end

