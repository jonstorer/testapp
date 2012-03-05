class CreateAuditLogs < ActiveRecord::Migration
  def change
    create_table :audit_logs do |t|
      t.references :auditable, :polymorphic => true
      t.text       :modifications

      t.timestamps
    end
  end
end
