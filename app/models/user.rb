class User < ApplicationRecord
    has_many :posts
    validates_uniqueness_of :user_num
    before_validation :ensure_unique_user_num, on: :create

    STATUS = {
        watch: "watch",
        author: "author",
    }

    enum status: STATUS

    def self.status_options
        STATUS.map { |key, value| [key.capitalize, value] }
    end

    private
  
    def ensure_unique_user_num
        self.user_num ||= generate_unique_user_num
    end
    
    def generate_unique_user_num
        loop do
          num = rand(100000..999999)
          break num unless User.exists?(user_num: num)
        end
    end
end
