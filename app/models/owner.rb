class Owner < ApplicationRecord
  has_one :manager
  has_one :unit

  def get_owner_info
    if !params['search'].nil?
    owner_info = Owner.where("name like (?)", "%#{params['search']}%").first
    binding.pry
    end
  end

end
