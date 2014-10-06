class InventoriesController < ApplicationController

	def new
		@site = Site.find(params[:site_id])
		@inventory = @site.inventories.build(params[:inventory])
		@units = Unit.all
	end

	def create
		@site = Site.find(params[:site_id])
		@inventory = @site.inventories.build(inventory_params)
		if @inventory.save
			flash[:notice] = "Unit Added"
			redirect_to site_path(params[:site_id])
		end
	end

	private
	def inventory_params
		params.require(:inventory).permit(:site_id, :unit_id)
	end

end
