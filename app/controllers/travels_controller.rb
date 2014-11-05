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
	end

	def update
	end

	def destroy
	end

	private
	def travel_params
		params.require(:travel).permit(:crew_id, :location_code, :carrier_name, :carrier_number, :confirmation_number, :day, :depart_time, :arrive_time, :status, :notes)
	end

end
