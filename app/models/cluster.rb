class Cluster < ActiveRecord::Base
  has_many :courses
  has_many :researches
  has_many :supports
end
