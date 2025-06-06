class TodoList < ApplicationRecord
  validates :name, presence: true

  has_many :todo_items, dependent: :destroy
end