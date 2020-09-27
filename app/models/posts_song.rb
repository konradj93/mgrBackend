# frozen_string_literal: true

class PostsSong < ApplicationRecord
  belongs_to :post
  belongs_to :song
end
