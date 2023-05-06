class AddNotionSlugToPosts < ActiveRecord::Migration[7.0]
  def change
    add_column :posts, :notion_slug, :string
    add_index :posts, :notion_slug, unique: true
  end
end
