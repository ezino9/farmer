class Kcfarmer::BlogsController < Kcfarmer::ApplicationController
  def new
    @blog = Blog.new
  end

  def create
    @blog = Blog.new(blog_params)
    if @blog.save 
      redirect_to kcfarmer_root_path, :notice => 'Blog Published!'
    else
      render 'new'
    end
  end

  def edit
    @blog = Blog.find(params[:id])
  end

  def update
    @blog = Blog.find(params[:id])
    if @blog.update(blog_params)
      redirect_to kcfarmer_root_path(@blog), notice: 'All changes have been saved'
    else
      render 'edit'
    end
  end

  def index
    if params[:search]
      @blogs = Blog.search(params[:search]).all.order('created_at DESC')
      @categories = Category.all
    else
      @blogs = Blog.all.order('created_at DESC')
      @categories = Category.all
    end
  end

  def show
  @blog = Blog.find(params[:id])
  end

  def destroy
  end

  private
  def blog_params
    params.require(:blog).permit(:title, :body, :coverpicture, :category_id, :user_id)
  end
end
