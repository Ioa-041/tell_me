class Company < ApplicationRecord
  belongs_to :user
  with_options presence: true do
    validates :joining
    validates :leaving
    validates :name
  end
end
