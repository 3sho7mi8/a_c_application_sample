class AddColumnToGalleries < ActiveRecord::Migration[5.1]
  def change
    add_column :galleries, :url, :string
  end
end
