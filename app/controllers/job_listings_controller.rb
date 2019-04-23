class JobListingsController < ApplicationController
  def index
  	if user_signed_in?
      @job_listings = JobListing.where(genre_id: params[:genre_id])
      # whereでジャンルidを呼ぶ
    else
      redirect_to root_path
      flash[:notice] = "ログイン・新規登録してください。"

    end
  end

  def create
  end

  def show
    if user_signed_in?
        @job_listing =JobListing.find(params[:id])
        @entry = Entry.new
    end
  end

  def job_listing_cmp
    if user_signed_in?
    end
  end

  private

  def job_listing_params
  	params.require(:job_listing).permit(:company_id, :price, :place, :date_time, :people, :details)
  end
end

def cart_cfm
    @carts = Cart.all.includes(:item,:user)
    @shopping_hist = ShoppingHistory.new
      @shopping_hist.build_address_history
      @shopping_hist.ordered_items.build
    @items = Item.all
  end



