class AddColumnsToFollowList < ActiveRecord::Migration[6.0]
  def change
    add_column :follow_lists, :short_title, :string
    add_column :follow_lists, :last_name, :string
  end
end
