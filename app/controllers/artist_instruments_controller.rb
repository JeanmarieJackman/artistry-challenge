class ArtistInstrumentsController < ApplicationController

    def index
        @artist_instruments = ArtistInstrument.all 
    end
    
    def new
        @artist_instrument = ArtistInstrument.new
    end

    def create
        @artist_instrument = ArtistInstrument.create(artist_instrument_params)
        if @artist_instrument.valid?
            redirect_to artist_path(@artist_instrument.id)
        else
            flash[:errors]=@artist_instrument.errors.full_messages
            redirect_to new_artist_instrument_path
        end
    end

    private
    def artist_instrument_params
        params.require(:artist_instrument)
    end

end
