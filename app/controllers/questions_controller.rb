class QuestionsController < ActionController::Base
  def ask
  end

  def answer
    @input = params[:answer]
    # raise
    if @input == "I am going to work!"
      @answer = "Great!"
    elsif @input.end_with?("?")
      @answer = "Silly question, get dressed and go to work!"
    else 
      @answer = "I don't care, get dressed and go to work!"
    end
  end
end

# If the message is I am going to work,
# the coach will answer Great!
# If the message has a question mark ? at the end,
# the coach will answer Silly question, get dressed 
# and go to work!.
# Otherwise the coach will answer I don't care,
# get dressed and go to work!
