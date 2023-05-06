class AddReactionsCountToPosts < ActiveRecord::Migration[7.0]
  def self.up
    add_column :posts, :reactions_count, :integer, null: false, default: 0
    add_column :posts, :likes_count, :integer, null: false, default: 0
    add_column :posts, :loves_count, :integer, null: false, default: 0
    add_column :posts, :tils_count, :integer, null: false, default: 0
    add_column :posts, :wows_count, :integer, null: false, default: 0
    add_column :posts, :sparkles_count, :integer, null: false, default: 0
    add_column :posts, :hahas_count, :integer, null: false, default: 0
  end

  def self.down
    remove_column :posts, :reactions_count
  end
end
