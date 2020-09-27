# frozen_string_literal: true

class PostSerializer
  include FastJsonapi::ObjectSerializer
  has_many :songs
  attributes :title, :description, :layout
end
