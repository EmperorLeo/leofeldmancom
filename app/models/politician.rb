class Politician < ActiveRecord::Base
  default_scope { order('scared ASC') }
end
