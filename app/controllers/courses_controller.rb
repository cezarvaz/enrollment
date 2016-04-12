class CoursesController < ApplicationController
  before_action :set_course, only: [:edit, :update, :show]
  def index
    @courses = Course.all
  end

  def new
    @course = Course.new
  end

  def create
    @course = Course.new(course_params)
    if @course.save
      redirect_to @course
    else
      render :new
    end
  end

  def edit
  end

  def update
    if @course.update(course_params)
      redirect_to @course
    else
      render :edit
    end
  end

  def show
  end

  private

  def course_params
    params.require(:course)
          .permit(:name, :description, :status)
  end

  def set_course
    @course = Course.find(params[:id])
  end
end
