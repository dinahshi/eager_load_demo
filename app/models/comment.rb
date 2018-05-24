class Comment < ApplicationRecord
  belongs_to :post, touch: true

  def cache_key
    "#{id}:#{updated_at}"
  end
end
