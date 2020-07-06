# frozen_string_literal: true

module Mutations
  module User
    class AddFavoriteMovie < AuthBaseMutation
      type Types::MovieType

      description I18n.t('graphql.mutations.user.add_favorite_movie.desc')

      argument :input, Types::Inputs::UserMovieIdInput, required: true

      def resolve(input:)
        match_operation ::User::Operation::AddFavoriteMovie.call(
          current_user: current_user,
          params: input.to_h
        )
      end
    end
  end
end
