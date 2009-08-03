require 'test_helper'

class MailerTest < ActionMailer::TestCase
  test "notify" do
    @expected.subject = 'Mailer#notify'
    @expected.body    = read_fixture('notify')
    @expected.date    = Time.now

    assert_equal @expected.encoded, Mailer.create_notify(@expected.date).encoded
  end

end
