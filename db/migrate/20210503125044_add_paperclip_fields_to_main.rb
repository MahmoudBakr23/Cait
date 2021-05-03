class AddPaperclipFieldsToMain < ActiveRecord::Migration[6.1]
  def change
    add_column :mains, :image_file_name, :string
    add_column :mains, :image_content_type, :string
    add_column :mains, :image_file_size, :integer
    add_column :mains, :image_updated_at, :datetime
  end
end
