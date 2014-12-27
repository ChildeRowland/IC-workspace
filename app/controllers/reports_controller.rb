class ReportsController < ApplicationController

	def index
		@retrofit_job = RetrofitJob.find(params[:retrofit_job_id])
		@reports = @retrofit_job.reports.all
		if !Report.last.nil?
			@report = Report.last		
			@new_item = @report.items.build
		end
	end

	def new
		@retrofit_job = RetrofitJob.find(params[:retrofit_job_id])
		@report = Report.new 
		@report.items.build
	end

	# @user.businesses.build if @user.businesses.empty?

	def create
		@retrofit_job = RetrofitJob.find(params[:retrofit_job_id])
		@report = @retrofit_job.reports.build(report_params)
# Prevent a blank record from saving.
		@report.items.build if @report.items.empty?
		if @report.save
			flash[:notice] = "Report Added"
			redirect_to retrofit_job_reports_path(params[:retrofit_job_id])
		else
			flash.now[:notice] = "Fix the following errors:"
			render :new
		end
	end

	def destroy
		if Report.find(params[:id]).destroy
			flash[:notice] = "Job Report Removed"
			redirect_to retrofit_job_reports_path(params[:retrofit_job_id])
		end
	end

	private

	def report_params
		params.require(:report).permit(:retrofit_job_id, :day, :completed_by, items_attributes: [:title, :notes])
	end

end
