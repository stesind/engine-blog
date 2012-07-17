class CreateTags < ActiveRecord::Migration
  def change
    create_table :blog_tags do |t|
      t.string :name
      t.references :post

      t.timestamps
    end
    add_index :blog_tags, :post_id
  end
end
