class ApplicationMailer < ActionMailer::Base
  default from: 'henrywingard@my.smccd.edu'
  layout 'mailer'

  # private
  # def send_email(email, subject)
  #   delivery_options = {
  #     address: 'smtp.gmail.com',
  #     port: 587,
  #     domain: 'localhost:3000',
  #     user_name: ENV['tanhongitverifi@gmail.com'],
  #     password: ENV['mat khau'],
  #     authentication: 'plain',
  #     enable_starttls_auto: true
  #   }
  #   mail(to: email,
  #        subject: subject,
  #        delivery_method_options: delivery_options)
  # end
end



# phai bat cho phep ung dung ben thu 3: https://support.google.com/accounts/answer/3466521?hl=vi&authuser=1