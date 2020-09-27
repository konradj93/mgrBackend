# frozen_string_literal: true

class Song < ApplicationRecord
  validates :title, presence: true
  validates :sound_cloud, presence: true
  validates :artists, presence: true
  has_many :artists_songs, dependent: :destroy
  has_many :artists, through: :artists_songs
  has_many :posts_songs, dependent: :destroy
  has_many :posts, through: :posts_songs
end
