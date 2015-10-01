class StaticPagesController < ApplicationController
  def home
    if logged_in?
    @micropost = current_user.microposts.build 
    @feed_items = current_user.feed.paginate(page: params[:page])

  end

  def profile
  end

  def games
  end

  def venues
  end

  def about
  end

  def contact
  end
end
