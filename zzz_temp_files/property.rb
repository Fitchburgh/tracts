class Property < ApplicationRecord
  belongs_to :manager
  has_many :units
end
