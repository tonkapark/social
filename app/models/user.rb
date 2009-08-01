class User < ActiveRecord::Base
  include Clearance::User
  
  before_save :downcase_email
  
  has_many :items
  has_many :comments
  
  protected
  
  def downcase_email
    self.email = email.to_s.downcase
  end
  
end
