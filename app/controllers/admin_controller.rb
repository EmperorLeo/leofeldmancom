class AdminController < ActionController::Base

  def renderBlogs

    @posts = BlogPost.all

    render template: "admin/blogs/blog_post_admin"
  end

end
