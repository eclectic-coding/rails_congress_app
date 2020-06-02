class AddChamberToFollowLists < ActiveRecord::Migration[6.0]
  def change
    add_column :follow_lists, :chamber, :string
  end
end
