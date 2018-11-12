class CoursesController < ApplicationController
  before_action :set_course, only: [:show, :edit, :update, :destroy]

  def index
    @courses = Course.all
  end

  def new
    @course = Course.new
    @course.lectures.build
  end

  def create
    @course = Course.create(course_params)
    
    redirect_to @course
  end

  def show
    @lectures = @course.lectures
  end

  def edit
    
  end

  def update
    @course.update(course_params)
    redirect_to @course
  end

  def destroy
    @course.destroy
  end

  private

  def set_course
    @course = Course.find(params[:id])
  end

  def course_params
    params.require(:course).permit(
      :title,
      :category,
      :created_on,
      lectures_attributes: [
        :title,
        :category,
        :summary,
        :position
      ]
    )
  end
end