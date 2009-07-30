require 'test_helper'

class ItemTest < ActiveSupport::TestCase
  should_belong_to :user
  should_have_permissions :item
end
