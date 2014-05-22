class Picture < ActiveRecord::Base
  has_attached_file :foto, :styles => { :medium => "300x300>", :thumb => "100x100>" }
  validates_attachment_content_type :foto, :content_type => /\Aimage\/.*\Z/

  CATEGORIES = %w("Bodas", "Coronas", "Eventos", "Centros")
end
