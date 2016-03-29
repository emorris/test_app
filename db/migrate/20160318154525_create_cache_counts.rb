class CreateCacheCounts < ActiveRecord::Migration
  def change
    add_column :users, :posts_count, :integer, default: 0
    add_column :users, :comments_count, :integer, default: 0
    add_column :posts, :comments_count, :integer, default: 0
    
    User.reset_column_information
    Post.reset_column_information
    puts "User's children counts"
    User.includes(:comments, :posts).find_each do |user|
      User.update_counters user.id, posts_count: user.posts.count
      User.update_counters user.id, comments_count: user.comments.count
    end
    puts "adding comments_count to post "
    Post.includes(:comments).find_each do |post|
      Post.update_counters post.id, comments_count: post.comments.count
    end
  end
end
