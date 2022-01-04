class Coupon < ApplicationRecord
  belongs_to :user, optional: true
  has_many :order, dependent: :destroy
end
  
 

