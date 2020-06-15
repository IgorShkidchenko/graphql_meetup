# frozen_string_literal: true

module List::Operation
  class Delete < Trailblazer::Operation
    step Model(List, :find_by)
    step :destroy_list

    def destroy_list(ctx, model:, **)
      ctx['result'] = model.destroy
    end
  end
end
