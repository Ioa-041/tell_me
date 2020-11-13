class CreateWorks < ActiveRecord::Migration[6.0]
  def change
    create_table :works do |t|
      t.text :everyday,  null: false
      t.text :monthly,   null: false
      t.text :sometimes, null: false
      t.references :company, foreign_key: true
      t.timestamps
    end
  end
end
