class CommentsTable < ActiveRecord::Migration[5.2]
  def change
    create_table :comments do |c|
      c.text  :description     
      c.datetime :created_at
      c.datetime :updated_at
    end
  end
end
