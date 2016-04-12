class StudentsController < ApplicationController
  before_action :set_student, only: [:edit, :update, :show]
  def index
    @students = Student.all
  end

  def new
    @student = Student.new
  end

  def create
    @student = Student.new(student_params)
    if @student.save
      redirect_to @student
    else
      render :new
    end
  end

  def edit
  end

  def update
    if @student.update(student_params)
      redirect_to @student
    else
      render :edit
    end
  end

  def show
  end

  private

  def student_params
    params.require(:student)
          .permit(:name, :status)
  end

  def set_student
    @student = Student.find(params[:id])
  end
end
