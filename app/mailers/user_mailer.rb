class UserMailer < ApplicationMailer
  default from: "no-reply@jungle.com"
  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.user_mailer.order_confirmation.subject
  #
  def order_confirmation(user)
    @user = user
    mail(to: "hello@hello.hello", subject: "Your Order Has Been Placed!")
  end
end
