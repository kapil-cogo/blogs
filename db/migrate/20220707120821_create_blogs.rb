class CreateBlogs < ActiveRecord::Migration[7.0]
  def change
    create_table :blogs do |t|
      t.string :title
      t.string :short_desc
      t.text :description
      t.string :img_link
      t.timestamps
    end
  end
end
