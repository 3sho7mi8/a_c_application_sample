class AddColumnGetExhibitionIdToGalleries < ActiveRecord::Migration[5.1]
  def change
    add_reference :galleries, :get_exhibition, foreign_key: true
  end
end
