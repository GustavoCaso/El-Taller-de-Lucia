class Newsletter < ActiveRecord::Base
  validates_presence_of :title, :text, :url
end
