class AddColumnUsers < ActiveRecord::Migration[6.0]
  def change
            add_column :users, :users_id, :integer
  end
end
