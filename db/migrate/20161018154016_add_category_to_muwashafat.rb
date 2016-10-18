class AddCategoryToMuwashafat < ActiveRecord::Migration[5.0]
  def change
    add_column :muwashafats, :category, :integer
  end
end
