class CreateWorks < ActiveRecord::Migration[6.0]
  def change
    create_table :works do |t|
      t.text :everyday
      t.text :monthly
      t.text :sometimes
      t.references :company, foreign_key: true
      t.timestamps
    end
  end
end
