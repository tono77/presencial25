class SalesController < ApplicationController
	def index
		@sales = Sale.all
	end

  def new
  	@sale = Sale.new
  end

  def create
  	@sale = Sale.new(post_params)
  	@sale.cod = rand(999999)
		@sale.save
		redirect_to sales_path
  end

  private
	def post_params
		params.require(:sale).permit(:detail, :category, :value, :discount, :tax)
	end
end
