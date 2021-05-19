class ChangePostData < ActiveRecord::Migration[6.1]
  def change
    rename_column :posts, :topic, :title
    add_column :posts, :description, :text
    add_column :posts, :price, :integer
  end
end
