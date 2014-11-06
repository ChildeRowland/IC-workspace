class AssetsController < ApplicationController


	def index
		@assets = Asset.all
	end


	def new
		@asset = Asset.new
		@asset.build_address
	end


	def create
		@asset = Asset.create(asset_params)
		if @asset.save
			flash[:notice] = "Asset has been Created"
			redirect_to assets_path
		else
			flash.now[:notice] = "Fix the following errors:"
			render :new
		end
	end


	def show
		@asset = Asset.find(params[:id])
	end


	def edit
		@asset = Asset.find(params[:id])
	end


	def update
		@asset = Asset.find(params[:id])
		if @asset.update_attributes(asset_params)
			flash[:notice] = "Asset Updated"
			redirect_to asset_path(params[:id])
		else
			flash.now[:notice] = "Fix the following errors:"
			render :edit
		end
	end


	def destroy
		@asset = Asset.find(params[:id])
		if @asset.destroy
			flash[:notice] = "Asset Deleted"
			redirect_to assets_path
		else
			flash[:notice] = "Try Again"
			redirect_to = :back
		end
	end


	private

	def asset_params
		params.require(:asset).permit(:fname, :mname, :lname, :dob, :phone, :email, :rate, address_attributes: [:line_one, :line_two, :city, :state, :zip])
	end

end
