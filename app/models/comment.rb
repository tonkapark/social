class Comment < ActiveRecord::Base
  include Permissions
  
  belongs_to :item
  belongs_to :user
end
