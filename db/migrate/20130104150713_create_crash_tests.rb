class CreateCrashTests < ActiveRecord::Migration
  def change
    create_table :crash_tests do |t|
      t.string :name

      t.timestamps
    end
  end
end
