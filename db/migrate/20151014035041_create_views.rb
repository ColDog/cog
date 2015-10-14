class CreateViews < ActiveRecord::Migration
  def change
    create_table :views do |t|
      t.string :ip
      t.string :key
      t.string :path
      t.string :country
      t.string :region
      t.string :organization
      t.string :city
      t.string :latitude
      t.string :longitude

      t.timestamps null: false
    end
  end
end
