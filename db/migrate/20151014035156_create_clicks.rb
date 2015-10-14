class CreateClicks < ActiveRecord::Migration
  def change
    create_table :clicks do |t|
      t.references :view, index: true, foreign_key: true
      t.string :button

      t.timestamps null: false
    end
  end
end
