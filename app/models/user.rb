class User < ActiveRecord::Base
  validates_presence_of :email, :password, :full_name
  validates_presence_of :email 

  has_secure_password

end
