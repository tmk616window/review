class Task < ApplicationRecord
     belongs_to :user, optional: true
     has_many :like
     
end
