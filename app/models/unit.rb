class Unit < ApplicationRecord
  belongs_to :owner
  belongs_to :tenant
  belongs_to :manager

  def self.all_units(manager)
    @managed_units = Unit.where(
      manager_id: manager.id
    ).map { |n| n[:name] }
  end
end
