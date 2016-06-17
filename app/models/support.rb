class Support < ActiveRecord::Base
  belongs_to :cluster
  enum teaching_style: [:workshops, :one_on_on, :weekly]
  ednum education_level: [:graduate, :undergraduate]
end
