class AboutUs < ActiveRecord::Base
  validates :header, :description, :address, :province, :postal_code, :contact_number, :email, presence: true
end
