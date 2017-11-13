class CreateExhibitions < ActiveRecord::Migration[5.1]
  def change
    create_table :exhibitions do |t|
      t.string :title
      t.text :description
      t.string :image
      t.text :note

      t.timestamps
    end
  end
end
