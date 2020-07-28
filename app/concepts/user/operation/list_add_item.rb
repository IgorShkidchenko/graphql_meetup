# frozen_string_literal: true

module User::Operation
  class ListAddItem < Trailblazer::Operation
    step :add_movie_to_list
    step :set_result

    def add_movie_to_list(ctx, params:, **)
      ctx[:model] = ListsMovie.create(list_id: params[:list_id], movie_id: params[:movie_id])
    end

    def set_result(ctx, model:, **)
      ctx['result'] = model.movie
    end
  end
end
