class RenameResponseContextToContent < ActiveRecord::Migration
  def change
    rename_column :responses, :context, :content
  end
end
