class PaymentType < ActiveRecord::Base
  attr_accessible :name
  
  def self.names
    all.collect { |payment_type| payment_type.name }
  end
end
