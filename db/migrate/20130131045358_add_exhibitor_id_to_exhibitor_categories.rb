class AddExhibitorIdToExhibitorCategories < ActiveRecord::Migration
  def change
    add_column :exhibitor_categories, :exhibitor_id, :integer
  end
end
