class BlogPostController < ApplicationController

  #ADMIN Functions

  def list
    @posts = BlogPost.all
    render 'admin/blogs/list'
  end

  def show
    @post = BlogPost.find(params[:id])
    render 'admin/blogs/show'
  end

  def new
    @post = BlogPost.new
    render 'admin/blogs/_form'
  end

  def create
    @post = BlogPost.new(blog_post_params)

    if @post.save
      redirect_to :action => 'list'
    else
      render :action => 'new'
    end
  end

  def edit
    @post = BlogPost.find(params[:id])
    render 'admin/blogs/edit'
  end

  def update
    @post = BlogPost.find(params[:id])
    if @post.update_attributes(blog_post_param)
      redirect_to :action => 'show', :id => @post
    else
      render :action => 'edit'
    end
  end

  def delete
    BlogPost.find(params[:id]).destroy
    redirect_to :action => 'list'
  end

  def blog_post_params
    params.require(:posts).permit(:title, :content)
  end

  def blog_post_param
    params.require(:blog_post).permit(:title, :content)
  end

  #WEBSITE Functions

  def renderBlogs
    @posts = BlogPost.all
    render 'pages/blog'
  end

end
