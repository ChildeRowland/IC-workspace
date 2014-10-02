class UnitsController < ApplicationController

	def index
		@units = Unit.all
	end

	def new
		@unit = Unit.new
	end

	def create
		@unit = Unit.create(unit_params)
		if @unit.save
			flash[:notice] = "New Unit Added"
			redirect_to units_path
		# else
		# 	flash[:notice] = "Not Added"
		# 	redirect_to :back
		end
	end

	def show
	end

	def edit
	end

	private
	def unit_params
		params.require(:unit).permit( :avatar, :unit_type, :order_id, :vendor, :mfg, :product_id, :nickname, :description, :notes, :product_type)
	end

end
