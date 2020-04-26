class AddTitleAndNameToMembers < ActiveRecord::Migration[6.0]
  def change
    add_column :members, :title_and_name, :string
  end
end
