class Item < ActiveRecord::Base
  include Permissions
  
  belongs_to :user
  has_many :comments
  
  before_validation :published
  after_create :notify_item_post
  
  validates_presence_of :title
  validates_presence_of :body
  
  default_scope :order => 'updated_at DESC'
  named_scope :active, :conditions => ['updated_at < ?', Time.zone.now], 
                      :limit => 5, 
                      :order => 'updated_at DESC'
  named_scope :recent, :conditions => ['published_at < ?', Time.zone.now], 
                      :limit => 5, 
                      :order => 'published_at DESC'
  
  attr_accessible :title, :body, :user_id, :updated_at
  
  cattr_reader :per_page
  @@per_page = 10
    
  def published
      if self.published_at.blank?
          self.published_at = Time.now
      end
  end  
        
  def notify_item_post    
    User.notifiable.each do |u|
      Mailer.deliver_item_notify(self,u) unless u == self.user
    end
  end
end
