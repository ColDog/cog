class AddStuffToViews < ActiveRecord::Migration
  def change
    add_column :views, :campaign, :string
    add_index :views, :key
  end
end
