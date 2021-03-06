class Word < ApplicationRecord
    belongs_to :category
    validates :word, uniqueness: { scope: :category_id }, presence: true;
    validates :category_id, presence: true
end
