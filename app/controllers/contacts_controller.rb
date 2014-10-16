class ContactsController < ApplicationController

	def index
		@retrofit_jobs = RetrofitJob.all
	end

	def new
		@retrofit_job = RetrofitJob.find(params[:retrofit_job_id])
		@contact = @retrofit_job.contacts.build(params[:contact])
	end

	def create
		@retrofit_job = RetrofitJob.find(params[:retrofit_job_id])
		@contact = @retrofit_job.contacts.build(contract_params)
		if @contact.save
			flash[:notice] = "Contact Added"
			redirect_to retrofit_job_path(params[:retrofit_job_id])
		else
			flash[:notice] = "Try Again"
			redirect_to :back
		end
	end

	def edit
		@retrofit_job = RetrofitJob.find(params[:retrofit_job_id])
		@contact = @retrofit_job.contacts.find(params[:id])
	end

	def update
		@retrofit_job = RetrofitJob.find(params[:retrofit_job_id])
		@contact = @retrofit_job.contacts.find(params[:id])
		if @contact.update_attributes(contract_params)
			flash[:notice] = "Contact Updated"
			redirect_to retrofit_job_path(params[:retrofit_job_id])
		else
			flash[:notice] = "Try Again"
			redirect_to :back
		end
	end

	def destroy
		if Contact.find(params[:id]).delete
			flash[:notice] = "Contact Removed"
			redirect_to retrofit_job_path(params[:retrofit_job_id])
		end
	end

	private
	def contract_params
		params.require(:contact).permit(:retrofit_job_id, :title, :fname, :lname, :email, :notes)
	end

end
