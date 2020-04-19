class AddColumnMessages2 < ActiveRecord::Migration[6.0]
  def change
            add_column :messages, :date, :string
            add_column :messages, :place, :integer
            add_column :messages, :people, :integer
            
  end
end
