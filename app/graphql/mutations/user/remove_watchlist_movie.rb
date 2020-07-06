# frozen_string_literal: true

module Mutations
  module User
    class RemoveWatchlistMovie < AuthBaseMutation
      type Types::DeleteItemType

      description I18n.t('graphql.mutations.user.remove_watchlist_movie.desc')

      argument :input, Types::Inputs::UserMovieIdInput, required: true

      def resolve(input:)
        match_operation ::User::Operation::RemoveWatchlistMovie.call(params: input.to_h)
      end
    end
  end
end
