class AddFullNameToMembers < ActiveRecord::Migration[6.0]
  def change
    add_column :members, :full_name, :string
  end
end
