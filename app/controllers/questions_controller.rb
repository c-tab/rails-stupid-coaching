class QuestionsController < ApplicationController

  def ask

  end

  def answer
    @answer = params[:question]
    if @answer.include? '?'
      @coachanswer = 'Silly question, get dressed and go to work!'
    elsif @answer.include? 'work'
      @coachanswer = 'Great!'
    else
      @coachanswer = "I don't care, get dressed and go to work!"
    end
  end
end
