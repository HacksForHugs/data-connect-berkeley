class Research < ActiveRecord::Base
  belongs_to :cluster
  has_many :links
  enum client_focus: [:industry, :development, :research]
end
