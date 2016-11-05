class FinderController < ApplicationController
  before_action :set_customer, only: [:show, :edit, :update, :destroy]

  def index
    @customers = Customer.all
  end

  def alphabetized
    @customers = Customer.all.order(:full_name)
  end

  def missing_email
    @customers = Customer.all.where(email:'')
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_customer
      @customer = Customer.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def customer_params
      params.require(:customer).permit(:full_name, :phone_number, :email, :image, :notes)
    end
end
