class HomeController < ApplicationController
  before_action :find_user, only: [:add_subscribe_user, :unsubscribed_user]
  before_action :find_show, only: [:add_subscribe_user, :unsubscribed_user]
  def index
  	@tv_shows = TvShow.all
  end

  def add_subscribe_user
  	@user.favorite(@show)
  	redirect_to root_path
  end

  def unsubscribed_user
  	@user.unfavorite(@show)
  	redirect_to root_path
  end

  private

  def find_user
    @user = User.find_by(id: params[:user_id]) || current_user
  end

  def find_show
  	@show = TvShow.find_by(id: params[:show_id])
  end
end
