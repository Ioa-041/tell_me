class CompanyWork
  include ActiveModel::Model
  attr_accessor :joining_year, :joining_month, :leaving_year, :leaving_month, :name, :detail, :worker_number, :employment_type, :user_id, :everyday, :monthly, :sometimes

  with_options presence: true do
    validates :joining_year
    validates :joining_month
    validates :leaving_year
    validates :leaving_month
    validates :name
    validates :detail
    validates :worker_number
    validates :employment_type
    validates :user_id
    validates :everyday
    validates :monthly
    validates :sometimes
  end

  def save
    company = Company.create(joining_year: joining_year, joining_month: joining_month, leaving_year: leaving_year, leaving_month: leaving_month, name: name, detail: detail, worker_number: worker_number, employment_type: employment_type, user_id: user_id)
    Work.create(everyday: everyday, monthly: monthly, sometimes: sometimes, company_id: company.id)
  end
end