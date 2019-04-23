class EntriesController < ApplicationController
  def index
  	if user_signed_in?
  		@entry = Entry.all
  	end
  end

  def create
  	if user_signed_in?
	  	@entry = Entry.new(entry_params)
	  	@entry.save
	  	redirect_to job_listing_cmp_path
	end
  end

  def show
  	if user_signed_in?
  	  @entry = Entry.find(params[:id])
  	end
  end
  
  private
  def entry_params
    params.require(:entry).permit(:user_id, :job_listing_id, :contract_date)
  end
end

