class StudentsController < ApplicationController

  before_action :set_student, only: [:show, :edit, :update, :destroy]

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

  def update
    if @student.update!(student_params)
      flash[:succes] = "You have updated #{@student.name}"
      redirect_to student_path(@student)
    else
      render :edit
      flash[:alert] = "Something didn't go right. Try that again!!!!"
    end
  end

  def destroy
    @student.destroy
    redirect_to students_path
  end

  private
  def student_params
    params.require(:student).permit(:name)
  end

  def set_student
    @student = Student.find(params[:id])
  end
end
