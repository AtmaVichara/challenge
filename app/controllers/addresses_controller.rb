class AddressesController < ApplicationController

  def new
    @address = Address.new
  end

  def create
    student = Student.find(params[:id])
    @address = student.address.create!(address_params)
    if @address.save
      flash[:success] = "You have added a new address"
      redirect_to sudent_path(@student)
    else
      render :new
    end
  end 

  private
  def address_params
    params.require(:address).permit(:street, :city, :state, :zipecode, :description)
  end

end
