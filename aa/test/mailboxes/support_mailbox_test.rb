# require "test_helper"

# class SupportMailboxTest < ActionMailbox::TestCase
#   # test "receive mail" do
#   #   receive_inbound_email_from_mail \
#   #     to: '"someone" <someone@example.com>',
#   #     from: '"else" <else@example.com>',
#   #     subject: "Hello world!",
#   #     body: "Hello?"
#   # end
#   test "we create a SupportRequest when we get a support email" do
#     receive_inbound_email_from_mail(
#         to: "tanhongitverifi@gmail.com",
#         from: "chris@somewhere.net",
#         subject: "Need help",
#         body: "I can't figure out how to check out!!"
#     )
#     support_request = SupportRequest.last
#     assert_equal "chris@somewhere.net", support_request.email
#     assert_equal "Need help", support_request.subject
#     assert_equal "I can't figure out how to check out!!", support_request.body
#     assert_nil support_request.order
#   end

#   test "we create SupportRequest with the most recent order" do

#     recent_order = orders(:one)
#     older_order = orders(:another_one)
#     non_customer = orders(:other_customer)

#     receive_inbound_email_from_mail(
#         to: "tanhongitverifi@gmail.com",
#         from: recent_order.email,
#         subject: "Need help",
#         body: "I can't figure out how to check out!!"
#     )

#     support_request = SupportRequest.last
#     assert_equal recent_order.email, support_request.email
#     assert_equal "Need help", support_request.subject
#     assert_equal "I can't figure out how to check out!!", support_request.body
#     assert_equal recent_order, support_request.order
#   end
# end
#---
# Excerpted from "Agile Web Development with Rails 6",
# published by The Pragmatic Bookshelf.
# Copyrights apply to this code. It may not be used to create training material,
# courses, books, articles, and the like. Contact us if you are in doubt.
# We make no guarantees that this code is fit for any purpose.
# Visit http://www.pragmaticprogrammer.com/titles/rails6 for more book information.
#---
# frozen_string_literal: true
require "test_helper"

class SupportMailboxTest < ActionMailbox::TestCase
  test "we create a SupportRequest when we get a support email" do
    receive_inbound_email_from_mail(
      to: "tanhongitverifi@gmail.com",
      from: "ph12357tan@gmail.com",
      subject: "Need help",
      body: "I can't figure out how to check out!!"
    )

    support_request = SupportRequest.last
    assert_equal "ph12357tan@gmail.com", support_request.email
    assert_equal "Need help", support_request.subject
    assert_equal "I can't figure out how to check out!!", support_request.body
    assert_nil support_request.order
  end


  # previous test

  test "we create a SupportRequest with the most recent order" do
    recent_order  = orders(:one)
    older_order   = orders(:another_one)
    non_customer  = orders(:other_customer)

    receive_inbound_email_from_mail(
      to: "tanhongitverifi@gmail.com",
      from: recent_order.email,
      subject: "Need help",
      body: "I can't figure out how to check out!!"
    )

     support_request = SupportRequest.last
     assert_equal recent_order.email, support_request.email
     assert_equal "Need help", support_request.subject
     assert_equal "I can't figure out how to check out!!", support_request.body
     assert_equal recent_order, support_request.order
  end

end
