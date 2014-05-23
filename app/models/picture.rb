class Picture < ActiveRecord::Base
  has_attached_file :foto, :styles => { :medium => "400x400>", :thumb => "100x100>", :large => "500x500>" }
  validates_attachment_content_type :foto, :content_type => /\Aimage\/.*\Z/

  CATEGORIES = %w(Bodas Coronas Eventos Centros)
end
