# frozen_string_literal: true

module User::Operation
  class AddFavoriteMovie < Trailblazer::Operation
    step :add_movie_to_favorites
    step :set_result

    def add_movie_to_favorites(ctx, params:, current_user:, **)
      ctx[:model] = FavoriteMovie.create({ user_account: current_user, movie_id: params[:movie_id] })
    end

    def set_result(ctx, model:, **)
      ctx['result'] = model.movie
    end
  end
end
