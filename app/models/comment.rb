class Comment < ActiveRecord::Base
  include Permissions
  
  belongs_to :item
  belongs_to :user
  
  after_create :update_item
  after_create :notify_comment_post
  
  attr_accessible :body
  
  named_scope :recent, :conditions => ['created_at < ?', Time.zone.now], 
                      :limit => 5, 
                      :order => 'created_at DESC'
                      
  
  def notify_comment_post     
      Mailer.deliver_comment_notify(self) unless self.user  == self.item.user
  end
  
private
  def update_item
    item.update_attributes({:updated_at => Time.now})
  end
  
end
