class AddFieldsToBlogPosts < ActiveRecord::Migration[6.0]
  def change
    add_column :blogposts, :title, :string
    add_column :blogposts, :body, :text
  end
end
