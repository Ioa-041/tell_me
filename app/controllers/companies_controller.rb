class CompaniesController < ApplicationController
  def index
  end

  def new
    @company = Company.new
  end

  def create
    @company = Company.new(company_params)
    @company.save
  end

  private
  def company_params
    params.require(:company).permit(:joining, :leaving, :name, :detail, :worker_number, :employment_type).merge(user_id: current_user.id)
  end
end
