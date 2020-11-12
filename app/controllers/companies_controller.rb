class CompaniesController < ApplicationController
  def index
  end

  def new
    @company_work = CompanyWork.new
  end

  def create
    @company_work = CompanyWork.new(company_params)
    if @company_work.valid?
      @company_work.save
      
    end
  end

  private
  def company_params
    params.require(:company_work).permit(:joining_year, :joining_month, :leaving_year, :leaving_month, :name, :detail, :worker_number, :employment_type, :everyday, :monthly, :sometimes).merge(user_id: current_user.id)
  end
end
