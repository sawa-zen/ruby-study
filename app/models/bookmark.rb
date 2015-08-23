require 'active_record'
require 'will_paginate/active_record'

class Bookmark < ActiveRecord::Base
  validates :url, presence: true,
    format:{ with: %r(\Ahttps://.*\z) }

  # 位置ページに表示する件数を10件とする
  self.per_page = 10
end
