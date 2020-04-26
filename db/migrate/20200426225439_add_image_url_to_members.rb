class AddImageUrlToMembers < ActiveRecord::Migration[6.0]
  def change
    add_column :members, :image_url, :string
  end
end
