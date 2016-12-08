class TodoList < ApplicationRecord
  validates :name, presence: true, uniqueness: true
  has_many :todo_items
  belongs_to :user
end
