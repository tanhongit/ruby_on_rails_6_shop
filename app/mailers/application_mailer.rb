class ApplicationMailer < ActionMailer::Base
  default from: 'tanhongitverifi@gmail.com'
  layout 'mailer'

  # private
  # def send_email(email, subject)
  #   delivery_options = {
  #     address: 'smtp.gmail.com',
  #     port: 587,
  #     domain: 'http://localhost:3000/',
  #     user_name: ENV['tanhongitverifi@gmail.com'],
  #     password: ENV['03052000.phuongtan.happy.200012357'],
  #     authentication: 'plain',
  #     enable_starttls_auto: true
  #   }
  #   mail(to: email,
  #        subject: subject,
  #        delivery_method_options: delivery_options)
  # end
end
