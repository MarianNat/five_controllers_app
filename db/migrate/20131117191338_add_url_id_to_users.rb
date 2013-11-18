class AddUrlIdToUsers < ActiveRecord::Migration
  def change
    add_column :users, :url_id, :integer
  end
end
