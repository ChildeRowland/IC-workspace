class CrewsController < ApplicationController

	def new
		@assets = Asset.all
		@retrofit_job = RetrofitJob.find(params[:retrofit_job_id])
		@new_crew = @retrofit_job.crews.build(params[:crews])
	end

	def create
		@retrofit_job = RetrofitJob.find(params[:retrofit_job_id])
		@new_crew = @retrofit_job.crews.build(crew_params)
		if @new_crew.save
			flash[:notice] = "Crew Updated"
			redirect_to retrofit_job_path(@retrofit_job)
		else
			flash[:notice] = "Fix the following errors:"
			redirect_to :back
		end
	end

	def destroy
		@retrofit_job = RetrofitJob.find(params[:retrofit_job_id])
		@crew = Crew.find(params[:id])
		if @crew.destroy
			flash[:notice] = "Asset Removed from Crew"
			redirect_to retrofit_job_path(@retrofit_job)
		end

	end

	private
	def crew_params
		params.require(:crew).permit(:retrofit_job_id, :asset_id)
	end

end
