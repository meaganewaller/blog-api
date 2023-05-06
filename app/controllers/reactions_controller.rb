class ReactionsController < ApplicationController
  def index
    id = params[:post_id]

    reactions = Reaction.where(post_id: id)
    reactions ||= Reaction.none

    result = { post_reaction_counts: Reaction.count_for_post(id) }
  end

  def create
    remove_count_cache_key

    result = ReactionHandler.toggle(params)

    if result.success?
      render json: { result: result.action, kind: result.kind }
    else
      render json: { error: result.errors_as_sentence, status: 422 }, status: :unprocessable_entity
    end
  end

  private

  def check_limit
    rate_limit!(:reaction_creation)
  end

  def remove_count_cache_key
    Rails.cache.delete "count_for_reactable-Post-#{params[:reactable_id]}"
  end
end
