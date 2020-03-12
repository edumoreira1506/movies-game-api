class Sentence < ApplicationRecord
  validates :content, presence: true

  belongs_to :movie
end
