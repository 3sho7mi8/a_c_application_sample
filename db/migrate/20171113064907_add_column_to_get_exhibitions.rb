class AddColumnToGetExhibitions < ActiveRecord::Migration[5.1]
  def change
    add_reference :get_exhibitions, :gallery, foreign_key: true
  end
end
