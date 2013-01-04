class CrashTest < ActiveRecord::Base
  attr_accessible :name
  has_many :crash_test_dummies
end
