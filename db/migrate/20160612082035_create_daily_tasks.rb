class CreateDailyTasks < ActiveRecord::Migration
  def change
    create_table :daily_tasks do |t|
      t.string :title
      t.integer :user_id

      t.timestamps null: false
    end
  end
end
