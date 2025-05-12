class QuestionsController < ApplicationController
  def ask
  end

  def answer
    # If the message is I am going t.o work, the coach will answer Great!
    if params[:question] == "I am going to work"
      @answer = 'Great!'
    elsif params[:question].end_with?('?')
      @answer = 'Silly question, get dressed and go to work!'
    else
      @answer = "I don't care, get dressed and go to work!"
    end
    # If the message has a question mark ? at the end, the coach will answer Silly question, get dressed and go to work!.
    # Otherwise the coach will answer I don't care, get dressed and go to work!
  end
end
