require 'active_support/concern'

module Mixins::Auditable
  extend ActiveSupport::Concern

  included do
    has_many :audit_logs, :as => :auditable

    around_save :cache_and_save_modifications
  end

  private
  def cache_and_save_modifications
    modifications = changes
    yield
    audit_logs.create(modifications: modifications) if modifications.any?
  end
end
