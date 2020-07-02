class OrderMailer < ApplicationMailer
  default from: 'Tan Hong <tanhongitverifi@gmail.com>'
  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.order_mailer.received.subject
  #
  # def received
  #   @greeting = "Hi"

  #   mail to: "to@example.org"
  # end
  def received(order)
    @order = order
    mail to: order.email, subject: 'Pragmatic Store Order Confirmation'
  end

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.order_mailer.shipped.subject
  #
  def shipped
    # @greeting = "Hi"

    # mail to: "to@example.org"
    @order = order

    mail to: order.email, subject: 'Pragmatic Store Order Shipped'
  end
end
