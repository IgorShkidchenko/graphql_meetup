# frozen_string_literal: true

module User::Operation
  class AddFavoriteMovie < Trailblazer::Operation
    step :add_movie_to_favorites

    def add_movie_to_favorites(ctx, params:, **)
      opts = { user_account: params[:user], movie_id: params[:movie_id]}
      favorite_movie = FavoriteMovie.create(opts)
      ctx['result'] = favorite_movie.movie
    end
  end
end
