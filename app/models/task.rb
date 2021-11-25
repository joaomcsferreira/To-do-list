class Task < ApplicationRecord
    validates :body, presence: true, uniqueness: { case_sensitive: false }
end