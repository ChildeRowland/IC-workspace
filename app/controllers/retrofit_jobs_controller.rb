class RetrofitJobsController < ApplicationController


	def index
		@retrofit_jobs = RetrofitJob.all
	end


	def new
		@retrofit_job = RetrofitJob.new
		@retrofit_job.build_address
	end


	def create
		@retrofit_job = RetrofitJob.create(retrofit_job_params)
		if @retrofit_job.save
			flash[:notice] = "Store Added"
			redirect_to retrofit_job_path(@retrofit_job)
		else
			flash[:notice] = "Try Again"
			render :new
		end
	end


	def edit
		@retrofit_job = RetrofitJob.find(params[:id])
	end


	def update
		@retrofit_job = RetrofitJob.find(params[:id])
		if @retrofit_job.update_attributes(retrofit_job_params)
			flash[:notice] = "Store Info Updated"
			redirect_to retrofit_job_path(params[:id])
		else
			flash[:notice] = "Try Again"
			render :edit
		end
	end


	def show
		@retrofit_job = RetrofitJob.find(params[:id])
		@new_crew = @retrofit_job.crews.build(params[:crew])
		@crew = @retrofit_job.crews(params[:id])
		
		@assets = @retrofit_job.assets.all
		@units = @retrofit_job.units.all

		@new_inventory = @retrofit_job.inventories.build(params[:inventory])
		@inventory = @retrofit_job.inventories(params[:id])

	end


	def destroy
		@retrofit_job = RetrofitJob.find(params[:id])
		if @retrofit_job.destroy
			flash[:notice] = "Job Deleted"
			redirect_to retrofit_jobs_path
		else
			flash[:notice] = "Try Again"
			redirect_to :back
		end
	end


	def remove
		@retrofit_job = RetrofitJob.find(params[:id])
		@crew = Crew.find_by(retrofit_job_id: @retrofit_job.id, asset_id: params[:foo_params])
		if @crew.delete
			flash[:notice] = "Asset Removed"
			redirect_to retrofit_job_path
		end
	end


	private
	
	def retrofit_job_params
		params.require(:retrofit_job).permit(:store_number, :mall_name, :phone, :url, :sqft, :hours, :start, :finish, address_attributes: [:line_one, :line_two, :city, :state, :zip])
	end

end
