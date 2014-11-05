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
			flash[:notice] = "Unit Added "
			redirect_to retrofit_job_path(params[:retrofit_job_id])
		else
			flash.now[:notice] = "Try Again"
			render :new
		end
	end

	def edit
		@retrofit_job = RetrofitJob.find(params[:retrofit_job_id])
		@inventory = @retrofit_job.inventories.find(params[:id])
	end

	def update
		@retrofit_job = RetrofitJob.find(params[:retrofit_job_id])
		@inventory = @retrofit_job.inventories.find(params[:id])
		if @inventory.update_attributes(inventory_params)
			flash[:notice] = "Inventory Updated"
			redirect_to retrofit_job_path(params[:retrofit_job_id])
		else
			flash.now[:notice] = "Try Again"
			render :edit
		end
	end

	def destroy
		@retrofit_job = RetrofitJob.find(params[:retrofit_job_id])
		@inventory = @retrofit_job.inventories.find(params[:id])
		if @inventory.destroy
			flash[:notice] = "Unit removed from Inventory"
			redirect_to retrofit_job_path(params[:retrofit_job_id])
		end

	end

	private
	def inventory_params
		params.require(:inventory).permit(:retrofit_job_id, :unit_id, :quantity, :status, :notes)
	end

end
