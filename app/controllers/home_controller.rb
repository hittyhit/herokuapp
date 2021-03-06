class HomeController < ApplicationController
  before_action :set_user, except: :front
  respond_to :html, :js

  def index
    @post = Post.new
    @activities = PublicActivity::Activity.order(created_at: :desc).paginate(page: params[:page], per_page: 10)
  end

  def front
    @activities = PublicActivity::Activity.order(created_at: :desc).paginate(page: params[:page], per_page: 10)
  end

  private
  def set_user
    @user = current_user
  end
end
