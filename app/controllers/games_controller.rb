class GamesController < ApplicationController
  def new
    alphabet = ('A'..'Z').to_a
    @letters = []
    10.times do
      @letters << alphabet.sample
    end
  end

  def score
    @answer = params[:answer].split('')
    @letters = params[:letters].split('')
    @word = []
    @answer.each do |letter|
      if @letters.include?(letter)
        @word << letter
      end
    end
    if @word == @answer

    end
  end

  private

  def english_word

  end

  def included?
    @answer = params[:answer].split('')
    @letters = params[:letters].split('')
    @letters.all? { |word| word.count }
  end
end