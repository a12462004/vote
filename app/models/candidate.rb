class Candidate < ApplicationRecord
  validates :name,presence: true
  has_many :logs
  
  def display_name
    "#{name}(#{party})"
  end
  def vote
    self.votes = self.votes + 1
    save
#     以下是另一個方式做票數加一的動作
#     increment(:votes)
#     save
  end
end