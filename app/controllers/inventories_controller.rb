class InventoriesController < ApplicationController

	def new
		@retrofit_job = RetrofitJob.find(params[:retrofit_job_id])
		@inventory = @retrofit_job.inventories.build(params[:inventory])
		@units = Unit.all
	end

	def create
		@retrofit_job = RetrofitJob.find(params[:retrofit_job_id])		
		@inventory = @retrofit_job.inventories.build(inventory_params)
		if @inventory.save
			flash.now[:notice] = "Unit Added "
			redirect_to retrofit_job_path(params[:retrofit_job_id])
		end
	end

	private
	def inventory_params
		params.require(:inventory).permit(:retrofit_job_id, :unit_id, :quantity, :status)
	end

end
