class CrashTestDummy < ActiveRecord::Base
  attr_accessible :height, :name, :crash_test_id, :weight
  belongs_to :crash_test
end
