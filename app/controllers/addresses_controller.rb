class AddressesController < ApplicationController
  before_action :set_student, only: [:create, :new]

  def new
    @address = Address.new
  end

  def create
    @address = @student.addresses.create!(address_params)
    if @address.save
      flash[:success] = "You have added a new address"
      redirect_to student_path(@student)
    else
      render :new
    end
  end

  private
  def address_params
    params.require(:address).permit(:street, :city, :state, :zipecode, :description)
  end

  def set_student
    @student = Student.find(params[:student_id])
  end

end
