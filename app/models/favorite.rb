# frozen_string_literal: true

class Favorite < ApplicationRecord
  extend ActsAsFavoritor::FavoriteScopes

  belongs_to :favoritable, polymorphic: true
  belongs_to :favoritor, polymorphic: true

  def block!
    update!(blocked: true)
  end

  def self.email_notification
  	subscribe_users = Favorite.all
  	subscribe_users.each do |subscribe_user|
      user_id = subscribe_user.favoritor_id
      show_id = subscribe_user.favoritable_id
      show = TvShow.find(show_id)
      show_time = show.timing.strftime("%H:%M").to_time
      current_time = Time.now.strftime("%H:%M").to_time
      time_diff = (show_time - current_time)/60
      p "========================"
      if time_diff == 5
        UserMailer.notification_email(user_id, show_id).deliver_now
      end
    end
  end

end
