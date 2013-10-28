class Tracker < ActiveRecord::Base
  before_create :generate_uniq_id
  has_many :subjects, dependent: :destroy

  validates :name, presence: true

  def to_param
    uniq_id
  end

  private

  def generate_uniq_id
    self.uniq_id = SecureRandom.hex(5)
  end
end
