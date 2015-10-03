class Product < ActiveRecord::Base
  validates :title, uniqueness: true
  

  def self.latest
    Product.order(:updated_at).last
  end 
end
