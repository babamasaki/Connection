class CompaniesController < ApplicationController

  def edit
    if company_signed_in?
  	  @company = Company.find(current_company.id)
    end
  end

  def update
    if company_signed_in?
      company = Company.find(current_company.id)
      company_id = current_company.id
      company.update(companies_params)
      flash[:notice] = "ユーザー情報が更新されました。"
      redirect_to top_path
    end

  end

  def destroy
  end

  def top
    if company_signed_in?
      @company = Company.find(current_company.id)
    end
  end

  def show
    if company_signed_in?
      @company = Company.find(current_company.id)
    end
  end
private
  def companies_params
  	params.require(:company).permit(:genre_id, :company_name, :photo_id, :capital, :emoloyee_number,:phone_number, :postcode, :prefecture, :city, :street, :building)
  end
end
