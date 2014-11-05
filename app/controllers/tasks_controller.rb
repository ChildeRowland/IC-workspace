class TasksController < ApplicationController

	def new
		@retrofit_job = RetrofitJob.find(params[:retrofit_job_id])
		@task = @retrofit_job.tasks.build(params[:task])
	end

	def create
		@retrofit_job = RetrofitJob.find(params[:retrofit_job_id])
		@task = @retrofit_job.tasks.build(task_params)
		if @task.save
			flash.now[:notice] = "Task Added"
			redirect_to retrofit_job_path(params[:retrofit_job_id])
		else
			flash.now[:notice] = "Try Again"
			render :new
		end
	end

	def edit
		@retrofit_job = RetrofitJob.find(params[:retrofit_job_id])
		@task = Task.find(params[:id])
	end

	def update
		@retrofit_job = RetrofitJob.find(params[:retrofit_job_id])
		@task = Task.find(params[:id])
		if @task.update_attributes(task_params)
			flash.now[:notice] = "Task Updated"
			redirect_to retrofit_job_path(params[:retrofit_job_id])
		else
			flash.now[:notice] = "Try Again"
			render :edit
		end
	end

	def destroy
		if Task.find(params[:id]).destroy
			flash.now[:notice] = "Task Deleted"
			redirect_to retrofit_job_path(params[:retrofit_job_id])
		end
	end

	private

	def task_params
		params.require(:task).permit(:retrofit_job_id, :title, :description, :notes, :status)
	end

end
