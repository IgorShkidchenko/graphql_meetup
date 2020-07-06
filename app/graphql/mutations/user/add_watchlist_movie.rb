# frozen_string_literal: true

module Mutations
  module User
    class AddWatchlistMovie < AuthBaseMutation
      type Types::MovieType

      description I18n.t('graphql.mutations.user.add_watchlist_movie.desc')

      argument :input, Types::Inputs::UserMovieIdInput, required: true

      def resolve(input:)
        match_operation ::User::Operation::AddWatchlistMovie.call(
          current_user: current_user,
          params: input.to_h
        )
      end
    end
  end
end
