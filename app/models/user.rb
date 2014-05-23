class User < ActiveRecord::Base
  has_secure_password validates: false
end
