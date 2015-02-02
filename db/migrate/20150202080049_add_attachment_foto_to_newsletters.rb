class AddAttachmentFotoToNewsletters < ActiveRecord::Migration
  def self.up
    change_table :newsletters do |t|
      t.attachment :foto
    end
  end

  def self.down
    drop_attached_file :newsletters, :foto
  end
end
