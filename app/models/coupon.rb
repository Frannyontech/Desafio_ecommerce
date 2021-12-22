class Coupon < ApplicationRecord
  belongs_to :user

  
  def compute_total(total)
    if discount.eq?('percent')
        percent_value = amount.to_f / 100
        total = total - (total * percent_value)
    else
        total = total - amount
        (total < 0) ? 0 : total
    end
  end

  def disabled
    self.available = false
    self.save
  end
end

  # Antes de pagar
  coupon = Coupon.find_by(code: get_code_from_params)
  if coupon.available?
      price = coupon.compute_total( order.total )
  end
  # Despues de pagar 
  if coupon.kind.eq?('target')
  coupon.disabled



