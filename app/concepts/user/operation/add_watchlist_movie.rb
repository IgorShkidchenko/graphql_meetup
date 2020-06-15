# frozen_string_literal: true

module User::Operation
  class AddWatchlistMovie < Trailblazer::Operation
    step :add_movie_to_watchlist

    def add_movie_to_watchlist(ctx, params:, **)
      opts = { user_account: params[:user], movie_id: params[:movie_id]}
      watchlist_movie = WatchlistMovie.create(opts)
      ctx['result'] = watchlist_movie.movie
    end
  end
end
