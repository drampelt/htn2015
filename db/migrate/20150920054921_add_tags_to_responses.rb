class AddTagsToResponses < ActiveRecord::Migration
  def change
    add_column :responses, :tags, :text
  end
end
