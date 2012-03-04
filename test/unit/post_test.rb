require 'test_helper'

class PostTest < ActiveSupport::TestCase
  test "it should be auditable" do
    assert Post.new.is_a?(Mixins::Auditable)
  end
end
