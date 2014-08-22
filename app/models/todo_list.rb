class TodoList < ActiveRecord::Base
  validates :title, presence: true
  validates :description, presence: true
  validates :address, presence: true
  validates :phone_number, presence: true
  validates :first_name, presence: true
  validates :last_name, presence: true



end
