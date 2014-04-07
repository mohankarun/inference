class CreateFeedbackItems < ActiveRecord::Migration
  def change
    create_table :feedback_items do |t|
      t.string :title
      t.text :description
      t.string :theme
      t.string :start

      t.timestamps
    end
  end
end
