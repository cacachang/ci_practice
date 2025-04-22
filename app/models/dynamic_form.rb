class DynamicForm < ApplicationRecord
  has_many :dynamic_columns, dependent: :destroy
  accepts_nested_attributes_for :dynamic_columns
end
