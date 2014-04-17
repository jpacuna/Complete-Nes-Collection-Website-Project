ActiveAdmin.register Game do

  
  # See permitted parameters documentation:
  # https://github.com/gregbell/active_admin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # permit_params :list, :of, :attributes, :on, :model
  #
  # or
  #
  # permit_params do
  #  permitted = [:permitted, :attributes]
  #  permitted << :other if resource.something?
  #  permitted
  # end
  #mount_uploader :image, GameImageUploader


  permit_params :name, :description, :reg_price, :sale_price, :stock_quantity, :release_year, :publisher_id, :genre_id, :developer_id, :image
end
  
