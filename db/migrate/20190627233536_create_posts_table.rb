class CreatePostsTable < ActiveRecord::Migration[5.2]
  def change
    create_table :posts do |p|
      p.text  :description     
      p.datetime :created_at
      p.datetime :updated_at
    end
  end
end
