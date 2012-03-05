require 'active_support/concern'

module AuditableSharedExamples
  should have_many :audit_logs

  test "it should be auditable" do
    assert Post.new.is_a?(Mixins::Auditable)
  end
end
