require 'test_helper'

class SupportRequestMailerTest < ActionMailer::TestCase
  test "respond" do
    mail = SupportRequestMailer.respond
    assert_equal "1", mail.subject
    assert_equal ["dave@example.org"], mail.to
    assert_equal ["tanhongitverifi@gmail.com"], mail.from
    assert_match "Hi", mail.body.encoded
  end

end
