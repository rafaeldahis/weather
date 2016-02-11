class AddConditionsToCities < ActiveRecord::Migration
  def change
    add_column :cities, :conditions, :string
  end
end
