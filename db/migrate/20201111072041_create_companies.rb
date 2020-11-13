class CreateCompanies < ActiveRecord::Migration[6.0]
  def change
    create_table :companies do |t|
      t.integer :joining_year,   null: false
      t.integer :joining_month,  null: false
      t.integer :leaving_year,   null: false
      t.integer :leaving_month,  null: false
      t.string :name,            null: false
      t.text :detail,            null: false
      t.string :worker_number,   null: false
      t.string :employment_type, null: false
      t.references :user,      foreign_key: true
      t.timestamps
    end
  end
end
