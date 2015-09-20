class AddKeywordsToResponses < ActiveRecord::Migration
  def change
    add_column :responses, :keywords, :text
  end
end
