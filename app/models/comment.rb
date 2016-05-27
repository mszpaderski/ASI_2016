class Comment < ActiveRecord::Base
  belongs_to :article
    belongs_to :user, :as => :created_by
end
