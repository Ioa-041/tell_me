class CompaniesController < ApplicationController
  before_action :move_to_index, except: :index

  def index
  end

  def new
    @company_work = CompanyWork.new
  end

  def create
    @company_work = CompanyWork.new(company_params)
    if @company_work.valid?
      @company_work.save
    else
      render action: :new
    end
  end

  private
  def company_params
    params.require(:company_work).permit(:joining_year, :joining_month, :leaving_year, :leaving_month, :name, :detail, :worker_number, :employment_type, :everyday, :monthly, :sometimes).merge(user_id: current_user.id)
  end

  def move_to_index
    unless user_signed_in?
      redirect_to action: :index
    end
  end
end
