class AddFileAttributesToImages < ActiveRecord::Migration
  def change
    add_column :images, :file_uid, :string
    add_column :images, :file_name, :string
  end
end
