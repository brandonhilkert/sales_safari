class Subject < ActiveRecord::Base
  belongs_to :tracker, touch: true
  validates :name, presence: true
end
