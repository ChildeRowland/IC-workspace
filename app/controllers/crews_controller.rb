class CrewsController < ApplicationController

	def new
		@assets = Asset.all
		@retrofit_job = RetrofitJob.find(params[:retrofit_job_id])
		@crew = @retrofit_job.crews.build(params[:crews])
	end

	def create
		@retrofit_job = RetrofitJob.find(params[:retrofit_job_id])
		@crew = @retrofit_job.crews.build(crew_params)
		if @crew.save
			flash[:notice] = "Crew Updated"
			redirect_to retrofit_job_path(@retrofit_job)
		else
			flash[:notice] = "Try Again"
			redirect_to :back
		end
	end

	private
	def crew_params
		params.require(:crew).permit(:retrofit_job_id, :asset_id)
	end

end
