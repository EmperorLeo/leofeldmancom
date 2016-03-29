class PagesController < ApplicationController

  def renderPolitics
    @politicians = Politician.all
    render 'pages/politics'
  end

  def renderBlogs
    @posts = BlogPost.all
    render 'pages/blog'
  end

end
