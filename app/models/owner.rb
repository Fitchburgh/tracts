class Owner < ApplicationRecord
  has_one :manager
  has_one :unit
end
