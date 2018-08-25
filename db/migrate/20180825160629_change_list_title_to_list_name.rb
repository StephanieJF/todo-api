class ChangeListTitleToListName < ActiveRecord::Migration[5.2]
  def change
    rename_column :lists, :title, :name
  end
end
