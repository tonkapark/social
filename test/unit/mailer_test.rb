require 'test_helper'

class MailerTest < ActionMailer::TestCase
  test "item_notify" do
    @expected.subject = 'Mailer#item_notify'
    @expected.body    = read_fixture('item_notify')
    @expected.date    = Time.now

    assert_equal @expected.encoded, Mailer.create_item_notify(@expected.date).encoded
  end

end
