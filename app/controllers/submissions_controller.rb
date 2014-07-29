class SubmissionsController < ApplicationController

  def index
    @submissions = Submission.all
  end

  def show
    @submission = Submission.find_by(id: params[:id])
  end

  def new
    @quiz = Quiz.find_by(id: params[:quiz_id])
  end

  def create
    @submission = Submission.new
    @submission.student_id = params[:student_id]
    @submission.quiz_id = params[:quiz_id]
    @submission.answer_1 = params[:answer_1]
    @submission.answer_2 = params[:answer_2]
    
    score = 0
    if @submission.answer_1.to_i == @submission.quiz.answer_1   
      score = score + 1
    end
    
    if @submission.answer_2.to_i == @submission.quiz.answer_2
      score = score + 1
    end
    
    @submission.score = score

    if @submission.save
      redirect_to "/submissions/#{ @submission.id }"
    else
      render 'new'
    end
  end

  def edit
    @submission = Submission.find_by(id: params[:id])
  end

  def update
    @submission = Submission.find_by(id: params[:id])
    @submission.student_id = params[:student_id]
    @submission.quiz_id = params[:quiz_id]
    @submission.answer_1 = params[:answer_1]
    @submission.answer_2 = params[:answer_2]
    @submission.score = params[:score]

    if @submission.save
      redirect_to "/submissions/#{ @submission.id }"
    else
      render 'edit'
    end
  end

  def destroy
    @submission = Submission.find_by(id: params[:id])
    @submission.destroy


    redirect_to "/submissions"
  end
end
