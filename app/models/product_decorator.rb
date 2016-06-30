Spree::Product.class_eval do
  #before_update :check_product_sale_price

  validates :sale_price, presence: true, if: :check_on_sale?
  validates :sale_price, numericality: true
  validates :on_sale, presence: true, if: :sale_price_present?
  validate :sale_price_with_master
 
  def sale_price_with_master
    if sale_price.to_i > price
      errors.add(:sale_price, "is greater than master price") 
    elsif sale_price.to_i <= 0
      errors.add(:sale_price, "must be greater than 0") 
    end
  end

  def check_on_sale?
    self.on_sale == true
  end

  def sale_price_present?
    self.sale_price.present? && self.sale_price > 0
  end
end