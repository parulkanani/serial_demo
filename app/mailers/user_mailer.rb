class UserMailer < ApplicationMailer
  default from: 'notifications@example.com'
 
  def notification_email(user_id, show_id)
    @user = User.find(user_id)
    @show = TvShow.find(show_id)
    mail(to: @user.email, subject: 'Reminder of your show')
  end
end
