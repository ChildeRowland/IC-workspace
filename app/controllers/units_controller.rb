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
		else
			flash.now[:notice] = "Not Added"
			render :new
		end
	end

	def show
	end

	def edit
	end

	private
	def unit_params
		params.require(:unit).permit(:unit_type, :order_identifier, :vendor, :mfg, :product_identifier, :nickname, :finish, :description, :notes, :product_type)
	end

end
