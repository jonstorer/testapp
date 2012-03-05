class AuditLog < ActiveRecord::Base
  serialize :modifications
  belongs_to :auditable, :polymorphic => true
end
