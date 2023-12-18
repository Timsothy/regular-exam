class Test < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :student
  belongs_to :test_name

  validates :test_name_id, numericality: { other_than: 0, message: "can't be blank" }
end
