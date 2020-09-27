# frozen_string_literal: true

class ArtistsSong < ApplicationRecord
  belongs_to :artist
  belongs_to :song
end
