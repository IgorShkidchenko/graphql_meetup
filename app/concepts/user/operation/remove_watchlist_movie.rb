# frozen_string_literal: true

module User::Operation
  class RemoveWatchlistMovie < Trailblazer::Operation
    step :model, fail_fast: true
    step :set_result
    step :remove_movie_from_watchlists

    def model(ctx, params:, **)
      ctx[:model] = WatchlistMovie.find_by(movie_id: params[:movie_id])
    end

    def set_result(ctx, model:, **)
      ctx['result'] = { deleted_item_id: model.movie.id }
    end

    def remove_movie_from_watchlists(ctx, model:, **)
      model.destroy
    end
  end
end
