# frozen_string_literal: true

module User::Operation
  class AddWatchlistMovie < Trailblazer::Operation
    step :add_movie_to_watchlist
    step :set_result

    def add_movie_to_watchlist(ctx, params:, current_user:, **)
      ctx[:model] = WatchlistMovie.create({ user_account: current_user, movie_id: params[:movie_id] })
    end

    def set_result(ctx, model:, **)
      ctx['result'] = model.movie
    end
  end
end
