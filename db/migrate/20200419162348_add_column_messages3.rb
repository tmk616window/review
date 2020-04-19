class AddColumnMessages3 < ActiveRecord::Migration[6.0]
  def change
            add_column :messages, :message_place, :string
            add_column :messages, :message_coment, :text
  end
end
