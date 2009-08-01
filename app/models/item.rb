class Item < ActiveRecord::Base
  include Permissions
  
  belongs_to :user
  has_many :comments
  
  before_validation :published
  
  validates_presence_of :title
  validates_presence_of :body
  
  default_scope :order => 'created_at DESC'
  
  attr_accessible :title, :body, :user_id
  
  cattr_reader :per_page
  @@per_page = 10
  
  def published
      if self.published_at.blank?
          self.published_at = Time.now
      end
  end  
end
