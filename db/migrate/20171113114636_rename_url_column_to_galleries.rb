class RenameUrlColumnToGalleries < ActiveRecord::Migration[5.1]
  def change
    rename_column :galleries, :url, :uri
  end
end
