class AuditLog < ActiveRecord::Base
  include ApplicationHelper

  serialize :modifications

  belongs_to :auditable, :polymorphic => true

  def self.create_from_modifications(modifications)
    create(modifications: modifications)
  end
end
