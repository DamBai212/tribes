class LecturesController < ApplicationController
  before_action :set_lecture, only: [:show, :edit, :update, :destroy]

  def index
    @lectures = Lecture.all
  end

  def new
    @lecture = Lecture.new
  end

  def create
    @lecture = Lecture.create(lecture_params)
    redirect_to @lecture
  end

  def show

  end

  def edit
    
  end

  def update
    @lecture.update(lecture_params)
    redirect_to @lecture
  end

  def destroy
    @lecture.destroy
  end

  private

  def set_lecture
    @lecture = Lecture.find(params[:id])
  end

  def lecture_params
    params.require(:lecture).permit(
      :title,
      :category,
      :summary,
      :position,
      :course_id,
  lectures_attributes: [:id, :title,:category,
      :summary,
      :position,
      :course_id, :_destroy])
  end
end
