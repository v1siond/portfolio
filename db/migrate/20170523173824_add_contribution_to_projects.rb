class AddContributionToProjects < ActiveRecord::Migration[5.0]
  def change
    add_column :projects, :contribution, :text
  end
end
