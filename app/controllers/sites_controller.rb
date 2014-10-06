class SitesController < ApplicationController

	def index
		@sites = Site.all
	end

	def new
		@site = Site.new
	end

	def create
		@site = Site.create(site_params)
		if @site.save
			flash[:notice] = "New Site Added"
			redirect_to sites_path
		end
	end

	def show
		@site = Site.find(params[:id])
		@units = Unit.all
	end

	private
	def site_params
		params.require(:site).permit( :client, :number )
	end

end
