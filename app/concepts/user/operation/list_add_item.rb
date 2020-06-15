# frozen_string_literal: true

module User::Operation
  class ListAddItem < Trailblazer::Operation
    step :add_movie_to_list

    def add_movie_to_list(ctx, params:, **)
      lists_movie = ListsMovie.create(list_id: params[:list_id], movie_id: params[:movie_id])
      ctx['result'] = lists_movie.list
    end
  end
end
