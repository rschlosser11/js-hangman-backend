class WordsController < ApplicationController
    def index
        words = Word.all 
        render json: words, except: [:created_at, :updated_at]
    end

    def create

    end
end