class CommentSerializer
  include FastJsonapi::ObjectSerializer
  attributes :id, :commentor, :body
end
