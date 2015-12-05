class ListingsController < ApplicationController
	before_action :set_listing, only: [:show, :edit, :update, :destroy]

	def index
		@listings = Listing.all
	end

	def show
		@listing = Listing.find(params[:id])
	end

	def new
		@listing = Listing.new
	end

	def create
		@listing = Listing.new(listing_params)
			@listing.save
			redirect_to listings_path
	end

	def edit
		@listing = Listing.find(params[:id])
	end

	def update
		if @listing.update(listing_params)
			redirect_to listings_path
		else
			render :edit
		end
	end

	def destroy
		@listing.destroy
		redirect_to listings_url
	end

	def set_listing
		@listing = Listing.find(params[:id])
	end

	def listing_params
		params.require(:listing).permit(:address, :unit, :price, :description, :image)
	end

end