class CreateCrashTestDummies < ActiveRecord::Migration
  def change
    create_table :crash_test_dummies do |t|
      t.string :name
      t.float :weight
      t.integer :height
      t.integer :crash_test_id

      t.timestamps
    end
  end
end
