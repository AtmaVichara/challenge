class StudentsController < ApplicationController

  before_action :set_student, only: [:show, :edit]

  def index
    @students = Student.all
  end

  def show
  end

  def new
    @student = Student.new
  end

  def create
    @student = Student.new(student_params)
    if @student.save
      flash[:success] = "You have created a new student"
      redirect_to student_path(@student)
    else
      render :new
      flash[:alert] = "Error. Student not saved... Try again!!!"
    end
  end

  def edit

  end

  private
  def student_params
    params.require(:student).permit(:name)
  end

  def set_student
    @student = Student.find(params[:id])
  end
end
