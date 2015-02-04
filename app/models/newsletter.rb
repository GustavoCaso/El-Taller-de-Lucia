class Newsletter < ActiveRecord::Base
  validates_presence_of :title, :text, :url

  has_attached_file :foto, :styles => { :medium => "300x200>", :thumb => "100x100>" }, :default_url => "/images/:style/missing.png"
  validates_attachment_content_type :foto, :content_type => /\Aimage\/.*\Z/
end
