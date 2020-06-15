# frozen_string_literal: true

module Mutations
  module User
    class AddWatchlistMovie < AuthBaseMutation
      type Types::MovieType

      description I18n.t('graphql.mutations.user.add_watchlist_movie.desc')

      argument :input, Types::Inputs::UserMovieIdInput, required: true

      def resolve(input:)
        opts = { params: input.to_h.merge(user: current_user) }
        match_operation ::User::Operation::AddWatchlistMovie.call(opts)
      end
    end
  end
end
