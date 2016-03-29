class BlogPostPolicy < ApplicationPolicy
  def delete?
    user.admin?
  end

  def list?
    user.admin?
  end

  def show?
    user.admin?
  end

  def new?
    user.admin?
  end

  def create?
    user.admin?
  end

  def edit?
    user.admin?
  end

  def update?
    user.admin?
  end

end
