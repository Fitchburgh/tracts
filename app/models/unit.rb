class Unit < ApplicationRecord
  belongs_to :owner
  belongs_to :tenant
  belongs_to :manager

  def self.all_units(manager)
    @managed_units = Unit.where(
      manager_id: manager.id
    )
  end

  def self.auto_manager_id(manager)
    'hi'# when creating a new unit auto populate DB's manager_id column with current manager
  end
end
