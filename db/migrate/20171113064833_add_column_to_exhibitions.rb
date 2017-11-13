class AddColumnToExhibitions < ActiveRecord::Migration[5.1]
  def change
    add_reference :exhibitions, :gallery, foreign_key: true
  end
end
