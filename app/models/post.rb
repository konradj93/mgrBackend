# frozen_string_literal: true

class Post < ApplicationRecord
  validates :title, presence: true
  has_many :posts_songs, dependent: :destroy
  has_many :songs, through: :posts_songs
  belongs_to :user
  has_many :comments, dependent: :destroy
end
