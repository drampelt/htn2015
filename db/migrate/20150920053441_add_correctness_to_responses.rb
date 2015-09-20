class AddCorrectnessToResponses < ActiveRecord::Migration
  def change
    add_column :responses, :correctness, :float
  end
end
