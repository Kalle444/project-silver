class AddIconPathToInterests < ActiveRecord::Migration[5.1]
  def change
    add_column :interests, :icon_path, :string
  end
end
