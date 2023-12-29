class TransactionsController < ApplicationController
    def new
      @guest = Guest.find(params[:guest_id])
      @transaction = Transaction.new
    end
  
    def create
      @guest = Guest.find(params[:guest_id])
      @transaction = @guest.build_transaction(transaction_params)
      if @transaction.save
        redirect_to @guest, notice: 'Transaction created successfully.'
      else
        render :new
      end
    end
  
    private
  
    def transaction_params
      params.require(:transaction).permit(:guest_folio, :transaction_type, :accommodation_account, :extras, :total)
    end
  end
  