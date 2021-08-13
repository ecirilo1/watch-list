# frozen_string_literal: true

class List < ApplicationRecord
  has_many :bookmarks
  has_many :movies, through: :bookmarks, dependent: :destroy
  has_one_attached :photo

  validates :name, uniqueness: true, presence: true
  validates :name, presence: true
end
