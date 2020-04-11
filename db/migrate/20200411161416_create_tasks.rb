class CreateTasks < ActiveRecord::Migration[6.0]
  def change
    create_table :tasks do |t|
      t.string :job
      t.string :pl
      t.integer :period

      t.timestamps
    end
  end
end
