# app/controllers/transactions_controller.rb

class TransactionsController < ApplicationController
  before_action :set_transaction, only: [:show, :edit, :update, :destroy]

  def index
    @transactions = Transaction.all
    render json: @transactions
  end

  def show
  end

  def new
    @transaction = Transaction.new
  end

  # app/controllers/transactions_controller.rb
def create
  @transaction = Transaction.new(transaction_params)

  if @transaction.save
    render json: @transaction, status: :created
  else
    render json: { errors: @transaction.errors.full_messages }, status: :unprocessable_entity
  end
end


  def edit
  end

  def update
    if @transaction.update(transaction_params)
      render json: @transaction, notice: 'Transaction was successfully updated.'
    else
      render :edit
    end
  end

  def destroy
    @transaction.destroy
    redirect_to transactions_url, notice: 'Transaction was successfully destroyed.'
  end

  private

  def set_transaction
    @transaction = Transaction.find(params[:id])
  end

  def transaction_params
    params.require(:transaction).permit(:issue_date, :due_date, :book_id, :member_id)
  end
end
