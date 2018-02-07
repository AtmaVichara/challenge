class AddressesController < ApplicationController

  def new
    @address = Address.new
  end

  private
  def address_params
    params.require(:address).permit(:street, :city, :state, :zipecode, :description)
  end

end
