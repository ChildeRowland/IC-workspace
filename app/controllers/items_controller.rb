class ItemsController < ApplicationController

	def create
		@retrofit_job = RetrofitJob.find(params[:retrofit_job_id])
		@report = Report.find(params[:report_id])
		@new_item = @report.items.build(item_params)
		if @new_item.save
			flash[:notice] = "Report Item Added"
			redirect_to retrofit_job_reports_path(@retrofit_job)
		else
			flash.now[:notice] = "Fix the following errors:"
			render :new
		end
	end

	def destroy
		if Item.find(params[:id]).destroy
			flash[:notice] = "Item Removed from the Report"
			redirect_to retrofit_job_reports_path(params[:retrofit_job_id])
		end
	end

	private
	def item_params
		params.require(:item).permit(:title, :notes)
	end

end
