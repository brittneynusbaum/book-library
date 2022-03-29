class AuthorsController < ApplicationController
  def create
    author = Author.new(
      name: params[:name], 
      age: params[:age], 
      genre: params[:genre]
    )
    author.save
    render json: author.as_json
  end
end
