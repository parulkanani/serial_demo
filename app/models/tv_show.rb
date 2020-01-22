class TvShow < ApplicationRecord
  acts_as_favoritable
  belongs_to :channel
end
