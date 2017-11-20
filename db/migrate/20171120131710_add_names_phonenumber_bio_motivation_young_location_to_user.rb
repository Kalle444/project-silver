class AddNamesPhonenumberBioMotivationYoungLocationToUser < ActiveRecord::Migration[5.1]
  def change
    add_column :users, :first_name, :string
    add_column :users, :last_name, :string
    add_column :users, :phone_number, :string
    add_column :users, :bio, :text
    add_column :users, :motivation, :text
    add_column :users, :location, :string
    add_column :users, :young, :boolean, default: true
  end
end
