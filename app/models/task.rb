class Task < ApplicationRecord
  belongs_to :project, dependent: :destroy

  validates :status, inclusion: { in: ['not-started', 'in-progress', 'complete'] }
  validates :name, presence: true
  validates :description, presence: true
  
  STATUS_OPTIONS = [
    ['Not started', 'not-started'],
    ['In Progress', 'in-progress'],
    ['Complete', 'complete']
  ]
end
