class Woman < ActiveRecord::Base
  validates :price, numericality: {greater_than_or_equal_to: 0.01}
  validates :title, uniqueness: true

  def self.latest
    Woman.order(:updated_at).last
  end 
  
  
end
