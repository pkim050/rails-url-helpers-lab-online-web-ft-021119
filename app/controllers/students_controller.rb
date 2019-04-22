class StudentsController < ApplicationController
  before_action :set_student, only: :show

  def index
    @students = Student.all
  end

  def show
  end

  def activate
    @student = set_student
    if @student.active == true
      @student.active = false
    else
      @student.active = true
    end
    direct to student_path(@student)
  end

  private

    def set_student
      @student = Student.find(params[:id])
    end
end
