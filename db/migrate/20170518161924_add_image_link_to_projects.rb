class AddImageLinkToProjects < ActiveRecord::Migration[5.0]
  def change
    add_column :projects, :image_link, :string
  end
end
