# frozen_string_literal: true

module List::Operation
  class Delete < Trailblazer::Operation
    step Model(List, :find_by)
    step :set_result
    step :destroy_list

    def set_result(ctx, model:, **)
      ctx['result'] = { deleted_item_id: model.id }
    end

    def destroy_list(ctx, model:, **)
      model.destroy
    end
  end
end
