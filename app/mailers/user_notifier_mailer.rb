class UserNotifierMailer < ApplicationMailer
  default from: 'no-reply@yourcongress.co'

  def send_signup_email(user)
    @user = user
    mail(to: @user.email,
         subject: 'Thanks for signing up for our amazing app')
  end
end
