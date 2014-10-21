class RetrofitJobsController < ApplicationController

	def index
		@retrofit_jobs = RetrofitJob.all
	end

	def new
		@retrofit_job = RetrofitJob.new
	end

	def create
		@retrofit_job = RetrofitJob.create(retrofit_job_params)
		if @retrofit_job.save
			flash[:notice] = "Store Added"
			redirect_to retrofit_job_path(params[:id])
		else
			flash[:notice] = "Try Again"
			redirect_to :back
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
			redirect_to :back
		end
	end

	def show
		@retrofit_job = RetrofitJob.find(params[:id])
		@crew = Crew.find(params[:id])
		#@crew = Crew.where(:retrofit_job_id => @retrofit_job.id).last
		@assets = Asset.all

	end

	private
	def retrofit_job_params
		params.require(:retrofit_job).permit(:store_number, :mall_name, :phone, :hours, :start, :finish)
	end

end
