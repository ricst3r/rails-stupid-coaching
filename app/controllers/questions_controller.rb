class QuestionsController < ApplicationController
  before_action :answer

  def ask
    # @question = params[:question]
  end

  def answer
    @question = params[:question]
    # if @question == 'Hello'
    #   @answer = 'Hi there.'
    # end

    # if @question == 'what time is it?'
    #   @answer = Time.now
    # end

    if @question == 'I am going to work right now!'
      @answer = 'Great!'
    elsif @question.to_s.ends_with?('?')
      @answer = 'Silly question, get dressed and go to work!'
    else
      @answer = "I don't care, get dressed and go to work!"
    end
  end


end
