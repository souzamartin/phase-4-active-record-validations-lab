class Post < ApplicationRecord
    validates :title, presence: true
    validates :content, length: {minimum: 250}
    validates :summary, length: {maximum: 250}
    validates :category, inclusion: {in: ["Fiction", "Non-Fiction"]}
    # validate :is_clickbait

    # def is_clickbait
    #     unless title.include?("Won't Believe" or "Secret" or "Top" or "Guess")
    #         errors.add(:title, "Must be clickbait")
    #     end
    # end
end
