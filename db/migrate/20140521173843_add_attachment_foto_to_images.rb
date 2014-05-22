class AddAttachmentFotoToImages < ActiveRecord::Migration
  def self.up
    change_table :pictures do |t|
      t.attachment :foto
    end
  end

  def self.down
    drop_attached_file :pictures, :foto
  end
end
