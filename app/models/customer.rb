class Customer < ActiveRecord::Base
  validates :first_name, :last_name, :address, :city, :postal_code, :email, :province_id, presence: true
  belongs_to :province
end
