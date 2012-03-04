class Post < ActiveRecord::Base
  include Mixins::Auditable
end
