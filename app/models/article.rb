class Article < ActiveRecord::Base
    belongs_to :user, :as => :created_by
    has_many :comments
    validates :title, presence: true, length: {maximum:50}
    validates :post, presence: true
end
