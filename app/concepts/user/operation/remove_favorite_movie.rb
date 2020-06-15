# frozen_string_literal: true

module User::Operation
  class RemoveFavoriteMovie < Trailblazer::Operation
    step :remove_movie_from_favorites

    def remove_movie_from_favorites(ctx, params:, **)
      favorite_movie = FavoriteMovie.find_by(movie_id: params[:movie_id])
      ctx['result'] = favorite_movie.movie
      favorite_movie.destroy
    end
  end
end
