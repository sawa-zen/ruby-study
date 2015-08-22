require 'active_record'

class Bookmark < ActiveRecord::Base
  validates :url, presence: true,
    format:{ with: %r(\Ahttps://.*\z) }
end
