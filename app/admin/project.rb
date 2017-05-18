ActiveAdmin.register Project do
  permit_params :name, :description, :link, :user_id
end
