# magic_ball.rb

# Just like "public class MagicBall { ... } in Java
# Note we use CamelCase for classes

class MagicBall

  # Instance-level variable.  ALL_CAPITALS_SNAKE_CASE implies that
  # it is a constant.  However, there is NOTHING stopping somebody from
  # modifying this!  This is unlike "final" in Java, which ensures that
  # nobody can modify the value.

  # Ruby is a VERY permissive language.  It assumes you know what you are
  # doing, which is very dangerous in a programming language.  However,
  # the benefit is that writing code tends to be much quicker and easier.

  # Note again that variables are not typed.  This is an array but
  # we do not have to declare it as an array, we can just put an array
  # there.
  
  ANSWERS = ["Yes", "No", "Ask again later", "Maybe", "Future is hazy"]

  # Methods are defined by "def" and then a list of parameters, if any.
  # Parentheses are optional.
  
  def ask question
    # Throw an exception labeled "That is not a question" unless
    # it is a valid question.
    raise "That is not a question!" unless question_valid question
    
    # ALL methods in Ruby return a value.  If there is no explicit
    # "return", the result of the last statement is returned as the
    # result of the method.
    # This will return a random result from the elements in ANSWERS
    # array.  Imagine how many lines of code this would be in Java!
    ANSWERS.sample
  end

  # All methods after this declaration are private
  # This acts just like Java's private - methods below can be called
  # by other methods in this class, but not externally.
  # Note that this is technically a lie.  You can get around this using
  # .send(:method_name) and bypass access restrictions.
  # Note that you do not need to write "private" in front of individual
  # methods
  
  private
  
  # Note that we use snake_case for methods and variables
  
  def question_valid question
    # If the question is a string (and not a number, or array, or
    # whatever) AND the last character is a question mark, we
    # assume it is a question.
    # Using a negative as an array index counts backward from the
    # last element.  So question[-1] is the last element
    question.is_a?(String) && question[-1] == "?"
  end
  
end

