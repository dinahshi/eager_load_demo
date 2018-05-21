class AddCommentsCountToPost < ActiveRecord::Migration[5.2]
  def change
    add_column :posts, :comments_count, :integer, default: 0, null: false

    Post.find_each { |p| Post.reset_counters(p.id, :comments) }
  end
end
