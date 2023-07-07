class Task < ApplicationRecord
  belongs_to :project

  validates :status, inclusion: { in: ['not-started', 'in-progress', 'complete'] }
  validates :name, presence: true
  
  STATUS_OPTIONS = [
    ['Not started', 'not-started'],
    ['In Progress', 'in-progress'],
    ['Complete', 'complete']
  ]

  def badge_color
    case status
    when 'not-started'
      'secondary'
    when 'in-progress'
      'success'
    when 'complete'
      'danger'
    end
  end

end
