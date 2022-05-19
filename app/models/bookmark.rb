# frozen_string_literal: true

class Bookmark < ApplicationRecord
  belongs_to :movie
  belongs_to :list

  # comment cannot be shorter than 6 characters
  validates :comment, length: { minimum: 6 }

  # is unique for a given movie/list couple
  # validates_uniqueness_of :user_id, :scope => [:question_id]
  validates_uniqueness_of :movie_id, scope: [:list_id]
end
