class NotesController < ApplicationController

  def index
    @notes = Note.all
  end

  def show
    @note = Note.find_by(id: params[:id])
  end

  def new
  end

  def create
    @note = Note.new
    @note.student_id = params[:student_id]
    @note.contents = params[:contents]

    if @note.save
      redirect_to "/notes/#{ @note.id }"
    else
      render 'new'
    end
  end

  def edit
    @note = Note.find_by(id: params[:id])
  end

  def update
    @note = Note.find_by(id: params[:id])
    @note.student_id = params[:student_id]
    @note.contents = params[:contents]

    if @note.save
      redirect_to "/notes/#{ @note.id }"
    else
      render 'edit'
    end
  end

  def destroy
    @note = Note.find_by(id: params[:id])
    @note.destroy


    redirect_to "/notes"
  end
end
