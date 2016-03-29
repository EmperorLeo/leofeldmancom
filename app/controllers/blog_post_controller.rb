class BlogPostController < ApplicationController
  before_action :require_login
  #ADMIN Functions

  def list
    authorize BlogPost
    @posts = BlogPost.all
    render 'admin/blogs/list'
  end

  def show
    @post = BlogPost.find(params[:id])
    authorize @post
    render 'admin/blogs/show'
  end

  def new
    @post = BlogPost.new
    authorize @post
    render 'admin/blogs/_form'
  end

  def create
    @post = BlogPost.new(blog_post_params)
    authorize @post
    if @post.save
      redirect_to :action => 'list'
    else
      render :action => 'new'
    end
  end

  def edit
    @post = BlogPost.find(params[:id])
    authorize @post
    render 'admin/blogs/edit'
  end

  def update
    @post = BlogPost.find(params[:id])
    authorize @post
    if @post.update_attributes(blog_post_param)
      redirect_to :action => 'show', :id => @post
    else
      render :action => 'edit'
    end
  end

  def delete
    @post = BlogPost.find(params[:id])
    authorize @post
    @post.destroy
    redirect_to :action => 'list'
  end

  def blog_post_params
    params.require(:posts).permit(:title, :content)
  end

  def blog_post_param
    params.require(:blog_post).permit(:title, :content)
  end

end
