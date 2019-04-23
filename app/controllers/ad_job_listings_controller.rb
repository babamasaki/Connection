class AdJobListingsController < ApplicationController
  def index
    if company_signed_in?
      @job_listings = JobListing.where(company_id: current_company.id)
    end
  end

  def create
    if company_signed_in?
     job_listing = JobListing.new(ad_job_listing_params)
     job_listing.company_id = current_company.id
     job_listing.genre_id = current_company.genre_id
     # job_listingの中にcourrent_companyのジャンルidを入れる
     job_listing.save
     redirect_to ad_job_listings_path
    end
  end

  def show
    if company_signed_in?
     @job_listing = JobListing.find(params[:id])
    end
  end

  def update
  end

  def destroy
  end

  def new
    if company_signed_in?
      @job_listing = JobListing.new
    end
  end

  def edit
  end

  private

  def ad_job_listing_params
    params.require(:job_listing).permit(:company_id, :price, :place, :date_time, :people, :details)
  end
end
