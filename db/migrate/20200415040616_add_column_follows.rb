class AddColumnFollows < ActiveRecord::Migration[6.0]
  def change
        add_column :follows, :user_email, :string
  end
end
