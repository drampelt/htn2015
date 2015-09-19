class CreateInterviews < ActiveRecord::Migration
  def change
    create_table :interviews do |t|
      t.string :name
      t.string :link
      t.references :user, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
