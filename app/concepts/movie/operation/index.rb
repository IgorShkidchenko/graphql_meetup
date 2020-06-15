# frozen_string_literal: true

module Movie::Operation
  class Index < Trailblazer::Operation
    step :set_result

    def set_result(ctx, params:, **)
      ctx['result'] = movies(params)
    end

    private

    def movies(params)
      filter = params[:filter]
      return ::Movie.all if filter.blank?

      ::Movie.where('title LIKE ?', "%#{filter}%")
    end
  end
end
