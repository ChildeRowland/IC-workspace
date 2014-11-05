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
			flash.now[:notice] = "New Unit Added"
			redirect_to unit_path(@unit)
		else
			flash.now[:notice] = "Not Added"
			render :new
		end
	end

	def show
		@unit = Unit.find(params[:id])
	end

	def edit
		@unit = Unit.find(params[:id])
	end

	def update
		@unit = Unit.find(params[:id])
			if @unit.update_attributes(unit_params)
				flash.now[:notice] = "Unit Updated"
				redirect_to unit_path(params[:id])
			else
				flash.new[:notice] = "Try Again"
				render :edit
			end
	end

	def destroy
		if Unit.find(params[:id]).destroy
			flash.now[:notice] = "Unit Deleted"
			redirect_to units_path
		end
	end

	private
	def unit_params
		params.require(:unit).permit(:img, :url, :type_of, :order_identifier, :vendor, :mfg, :product_identifier, :nickname, :finish, :description, :notes, :product_type)
	end

end
