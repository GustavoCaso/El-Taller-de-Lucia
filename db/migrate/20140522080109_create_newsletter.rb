class CreateNewsletter < ActiveRecord::Migration
  def change
    create_table :newsletters do |t|
      t.string :title
      t.text :text
      t.string :url
      t.timestamps
    end
  end
end
