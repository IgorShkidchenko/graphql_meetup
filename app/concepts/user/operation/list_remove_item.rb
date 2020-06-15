# frozen_string_literal: true

module User::Operation
  class ListRemoveItem < Trailblazer::Operation
    step :remove_movie_from_list

    def remove_movie_from_list(ctx, params:, **)
      lists_movie = ListsMovie.find_by(list_id: params[:list_id], movie_id: params[:movie_id])
      ctx['result'] = lists_movie.movie
      lists_movie.destroy
    end
  end
end
