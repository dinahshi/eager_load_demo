class PostSerializer
  include FastJsonapi::ObjectSerializer
  attributes :name, :title, :body
  cache_options enabled: true

  has_many :comments, cached: true
end
