class PreferencesController < ApplicationController

	def new
		@asset = Asset.find(params[:asset_id])
		@preference = Preference.new
	end

	def create
		@asset = Asset.find(params[:asset_id])
		@preference = @asset.build_preference(preference_params)
		if @preference.save
			flash[:notice] = "Preferences Saved"
			redirect_to asset_path(@asset)
		else
			flash[:notice] = "Fix the following errors:"
			render :new
		end
	end

	def edit
		@asset = Asset.find(params[:asset_id])
		@preference = Preference.find(params[:id])
	end

	def update
		@asset = Asset.find(params[:asset_id])
		@preference = Preference.find(params[:id])
		if @preference.update_attributes(preference_params)
			flash[:notice] = "Preferences Updated"
			redirect_to asset_path(@asset)
		else
			flash[:notice] = "Fix the following errors:"
			render :edit
		end
	end

	private 
	def preference_params
	params.require(:preference).permit(:asset_id, :airport, :seats, :airline, :other)
	end

end
