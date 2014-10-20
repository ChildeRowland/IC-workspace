class AssetsController < ApplicationController

	def index
		@assets = Asset.all
	end

	def new
		@asset = Asset.new
	end

	def create
		@asset = Asset.create(asset_params)
		if @asset.save
			flash[:notice] = "Asset has been Created"
			redirect_to assets_path
		else
			flash[:notice] = "Try Again"
			redirect_to :back
		end
	end

	def show
		@asset = Asset.find(params[:id])
	end

	private
	def asset_params
		params.require(:asset).permit(:fname, :mname, :lname, :dob, :phone, :email, :rate)
	end

end
