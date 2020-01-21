class CreateExperiences < ActiveRecord::Migration[6.0]
  def change
    create_table :experiences do |t|
      t.string  :title
      t.text    :text
      t.string  :img_url
      t.string  :location
      t.timestamps
    end

    add_column :projects, :img_url, :string
    add_column :projects, :github_link, :text
  end
end
