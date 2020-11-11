class CreateCompanies < ActiveRecord::Migration[6.0]
  def change
    create_table :companies do |t|
      t.date :joining,          null: false
      t.date :leaving,          null: false
      t.string :name,           null: false
      t.text :detail
      t.string :worker_number
      t.string :employment_type 
      t.references :user,      foreign_key: true
      t.timestamps
    end
  end
end
