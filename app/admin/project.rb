ActiveAdmin.register Project do
  permit_params :name, :description, :link, :image_link, :user_id
end
