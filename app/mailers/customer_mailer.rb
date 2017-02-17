class CustomerMailer < ApplicationMailer
  default from: 'notifications@example.com'

  def welcome_email(user)
    @user = user
    @url  = 'http://sonofcod.com'
    mail(to: @user.email, subject: 'Welcome to Son of Cod!')
  end
end
