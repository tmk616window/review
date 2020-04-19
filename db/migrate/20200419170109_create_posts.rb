class CreatePosts < ActiveRecord::Migration[6.0]
  def change
    create_table :posts do |t|
      t.string :poat_name
      t.text :post_content
      t.integer :post_old
      t.string :post_sex
      t.string :post_job
      t.string :post_email

      t.timestamps
    end
  end
end
