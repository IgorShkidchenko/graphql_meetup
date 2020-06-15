# frozen_string_literal: true

module User::Operation
  class RemoveWatchlistMovie < Trailblazer::Operation
    step :remove_movie_from_watchlists

    def remove_movie_from_watchlists(ctx, params:, **)
      watchlist_movie = WatchlistMovie.find_by(movie_id: params[:movie_id])
      ctx['result'] = watchlist_movie.movie
      watchlist_movie.destroy
    end
  end
end
