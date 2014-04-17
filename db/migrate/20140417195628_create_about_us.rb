class CreateAboutUs < ActiveRecord::Migration
  def change
    create_table :about_us do |t|
      t.string :header
      t.string :description
      t.string :address
      t.string :province
      t.string :postal_code
      t.string :contact_number
      t.string :email

      t.timestamps
    end
  end
end
