class AddStateFullNameToMembers < ActiveRecord::Migration[6.0]
  def change
    add_column :members, :state_full_name, :string
  end
end
