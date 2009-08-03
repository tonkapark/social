class User < ActiveRecord::Base
  include Clearance::User
  
  before_save :downcase_email
  
  has_many :items
  has_many :comments
  
  attr_accessible :location, :displayname, :website, :about, :item_notify
  
  named_scope :recent, :conditions => ['created_at < ?', Time.zone.now], 
                      :limit => 5, 
                      :order => 'created_at DESC'
  
  named_scope :notifiable, :conditions => ['item_notify = ?', 't']
  
  
  
  
  
  protected
  
  def downcase_email
    self.email = email.to_s.downcase
  end
  
end
