class Coupon < ApplicationRecord
  belongs_to :user

  def usable? #ese cupon es usable?
    valid_on_count?
  end

  
end
