require 'test_helper'

class OrderMailerTest < ActionMailer::TestCase
  test "received" do
    # mail = OrderMailer.received
    # assert_equal "Received", mail.subject
    # assert_equal ["to@example.org"], mail.to
    # assert_equal ["from@example.com"], mail.from
    # assert_match "Hi", mail.body.encoded
    mail = OrderMailer.received(orders(:one))
    assert_equal "Pragmatic Store Order Confirmation", mail.subject
    assert_equal ["dave@example.org"], mail.to
    assert_equal ["tanhongitverifi@gmail.com"], mail.from
    assert_match /1 x Programming Ruby 1.9/, mail.body.encoded
  end

  test "shipped" do
    # mail = OrderMailer.shipped
    # assert_equal "Shipped", mail.subject
    # assert_equal ["to@example.org"], mail.to
    # assert_equal ["from@example.com"], mail.from
    # assert_match "Hi", mail.body.encoded
    mail = OrderMailer.shipped(orders(:one))
    assert_equal "1", mail.subject
    assert_equal ["dave@example.org"], mail.to
    assert_equal ["tanhongitverifi@gmail.com"], mail.from
    assert_match /<td[^>]*>1<\/td>\s*<td>Programming Ruby 1.9<\/td>/,
      mail.body.encoded
  end

end
