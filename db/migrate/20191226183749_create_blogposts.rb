class CreateBlogposts < ActiveRecord::Migration[6.0]
  def change
    create_table :blogposts do |t|

      t.timestamps
    end
  end
end
