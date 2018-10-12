class UserMailer < ApplicationMailer
  default from: "no-reply@jungle.com"
  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.user_mailer.order_confirmation.subject
  #
  def order_confirmation(current_user, order)
    @user = current_user
    @order = order
    mail(to: @user.email, subject: "Your Order Has Been Placed! #{@order.id}")
  end
end
