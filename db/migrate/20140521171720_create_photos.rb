class CreatePhotos < ActiveRecord::Migration
  def change
    create_table :pictures do |t|
      t.string :title
      t.text :description
      t.string :category
      t.boolean :show, default: true
    end
  end
end
