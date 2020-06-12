class ArtistInstrument < ApplicationRecord
    has_many :artists 
    has_many :instruments 
end
