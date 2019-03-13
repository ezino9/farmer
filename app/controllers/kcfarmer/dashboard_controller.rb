class Kcfarmer::DashboardController < Kcfarmer::ApplicationController
  before_action :authenticate_member!
  def index
    if params[:search]
      @blogs = Blog.search(params[:search]).all.order('created_at DESC')
      @categories = Category.all
    else
      @blogs = Blog.all.order('created_at DESC')
      @categories = Category.all
      @members = Investor::User.all
    end
  end
end
