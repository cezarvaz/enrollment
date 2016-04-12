class ClassroomsController < ApplicationController
  before_action :set_classroom, only: [:edit, :update, :show]
  before_action :set_collections, only: [:new, :create]

  def index
    @classrooms = Classroom.all
  end

  def new
    @classroom = Classroom.new
  end

  def create
    @classroom = Classroom.new(classroom_params)
    if @classroom.save
      redirect_to @classroom
    else
      render :new
    end
  end

  def show
  end

  private

  def set_collections
    @students = Student.all
    @courses = Course.all
  end

  def classroom_params
    params.require(:classroom)
          .permit(:student_id, :course_id)
  end

  def set_classroom
    @classroom = Classroom.find(params[:id])
  end
end
