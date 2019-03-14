class StudentsController < ApplicationController
  before_action :set_student, only: :show

  def index
    @students = Student.all
  end

  def show
    @student = Student.find_by_id(params[:id])
  end

  def active
    @student = Student.find_by_id(params[:id])
    @student.toggle_active_status
  end



  private

    def set_student
      @student = Student.find(params[:id])
    end
end
