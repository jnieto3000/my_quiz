class QuizzesController < ApplicationController

  def index
    @quizzes = Quiz.all
  end

  def show
    @quiz = Quiz.find_by(id: params[:id])
  end

  def new
  end

  def create
    @quiz = Quiz.new
    @quiz.teacher_id = params[:teacher_id]
    @quiz.name = params[:name]
    @quiz.question_1 = params[:question_1]
    @quiz.q1_option_1 = params[:q1_option_1]
    @quiz.q1_option_2 = params[:q1_option_2]
    @quiz.q1_option_3 = params[:q1_option_3]
    @quiz.answer_1 = params[:answer_1]
    @quiz.question_2 = params[:question_2]
    @quiz.q2_option_1 = params[:q2_option_1]
    @quiz.q2_option_2 = params[:q2_option_2]
    @quiz.q2_option_3 = params[:q2_option_3]
    @quiz.answer_2 = params[:answer_2]

    if @quiz.save
      redirect_to "/quizzes/#{ @quiz.id }"
    else
      render 'new'
    end
  end

  def edit
    @quiz = Quiz.find_by(id: params[:id])
  end

  def update
    @quiz = Quiz.find_by(id: params[:id])
    @quiz.teacher_id = params[:teacher_id]
    @quiz.name = params[:name]
    @quiz.question_1 = params[:question_1]
    @quiz.q1_option_1 = params[:q1_option_1]
    @quiz.q1_option_2 = params[:q1_option_2]
    @quiz.q1_option_3 = params[:q1_option_3]
    @quiz.answer_1 = params[:answer_1]
    @quiz.question_2 = params[:question_2]
    @quiz.q2_option_1 = params[:q2_option_1]
    @quiz.q2_option_2 = params[:q2_option_2]
    @quiz.q2_option_3 = params[:q2_option_3]
    @quiz.answer_2 = params[:answer_2]

    if @quiz.save
      redirect_to "/quizzes/#{ @quiz.id }"
    else
      render 'edit'
    end
  end

  def destroy
    @quiz = Quiz.find_by(id: params[:id])
    @quiz.destroy


    redirect_to "/quizzes"
  end
end
