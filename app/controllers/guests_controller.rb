class GuestsController < ApplicationController
    def new
      @guest = Guest.new
    end
  
    def create
      @guest = Guest.new(guest_params)
      if @guest.save
        redirect_to @guest.room, notice: 'Guest created successfully.'
      else
        render :new
      end
    end
  
    private
  
    def guest_params
      params.require(:guest).permit(:guest_folio, :guest_no, :first_name, :surname, :email, :telephone_number, :room_type)
    end
  end
  