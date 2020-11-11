class CreateWorks < ActiveRecord::Migration[6.0]
  def change
    create_table :works do |t|
      t.text :everyday
      t.text :monthly
      t.text :sometimes
      t.timestamps
    end
  end
end
