class Manager < ApplicationRecord
  has_many :units
  has_many :tenants
  has_one :owner
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  # def remember_me
  #    false
  # end

end
