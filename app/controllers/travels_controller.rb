class TravelsController < ApplicationController

	def new
		@retrofit_job = RetrofitJob.find(params[:retrofit_job_id])
		@crew = Crew.find(params[:crew_id])
		@travel = @crew.travels.build(params[:travel])
	end

	def create
		@retrofit_job = RetrofitJob.find(params[:retrofit_job_id])
		@crew = Crew.find(params[:crew_id])
		@travel = @crew.travels.build(travel_params)
		if @travel.save
			flash[:notice] = "Travel Plan Added"
			redirect_to retrofit_job_path(@retrofit_job)
		else
			flash[:notice] = "Try Again"
			render :new
		end
	end

	def edit
		@retrofit_job = RetrofitJob.find(params[:retrofit_job_id])
		@crew = Crew.find(params[:crew_id])
		@travel = Travel.find(params[:id])
	end

	def update
		@retrofit_job = RetrofitJob.find(params[:retrofit_job_id])
		@crew = Crew.find(params[:crew_id])
		@travel = Travel.find(params[:id])
		if @travel.update_attributes(travel_params)
			flash[:notice] = "Travel Plan Added"
			redirect_to retrofit_job_path(@retrofit_job)
		else
			flash.now[:notice] = "Try Again"
			render :new
		end
	end

	def destroy
		@travel = Travel.find(params[:id])
		if @travel.delete
			flash[:notice] = "Travel Deleted"
			redirect_to retrofit_job_path(params[:retrofit_job_id])
		end
	end

	private
	def travel_params
		params.require(:travel).permit(:crew_id, :carrier_name, :carrier_number, :confirmation_number, :day, :depart_city, :depart_time, :arrive_city, :arrive_time, :status, :notes)
	end

end
