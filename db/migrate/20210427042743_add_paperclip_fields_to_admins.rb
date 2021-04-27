class AddPaperclipFieldsToAdmins < ActiveRecord::Migration[6.1]
  def change
    add_column :admins, :image_file_name, :string
    add_column :admins, :image_content_type, :string
    add_column :admins, :image_file_size, :integer
    add_column :admins, :image_updated_at, :datetime
  end
end
