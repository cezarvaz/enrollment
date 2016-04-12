class HomeController < ApplicationController
  def index
    @students = Student.all
    @courses = Course.all
    @classrooms = Classroom.all
  end
end
