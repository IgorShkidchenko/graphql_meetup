# frozen_string_literal: true

module List::Operation
  class Create < Trailblazer::Operation
    step :create_list
    step :set_result

    def create_list(ctx, params:, **)
      ::List.create(name: params[:name], user_account: params[:user])
    end

    def set_result(ctx, params:, **)
      ctx['result'] = params[:user]
    end
  end
end
