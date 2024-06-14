class Post < ApplicationRecord

    belongs_to :user

    STATUS = {
        pending: "pending",
        scheduled: "scheduled",
        running: "running"
    }

    enum status: STATUS

    def self.status_options
        STATUS.map { |key, value| [key.capitalize, value] }
    end
end
