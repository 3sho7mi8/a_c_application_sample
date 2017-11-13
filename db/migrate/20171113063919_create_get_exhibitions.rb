class CreateGetExhibitions < ActiveRecord::Migration[5.1]
  def change
    create_table :get_exhibitions do |t|
      t.string :title
      t.string :description
      t.string :image
      t.string :note

      t.timestamps
    end
  end
end
