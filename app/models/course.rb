class Course < ActiveRecord::Base
  belongs_to :cluster
  enum classifier: [:foundational, :applied, :meta]
end
