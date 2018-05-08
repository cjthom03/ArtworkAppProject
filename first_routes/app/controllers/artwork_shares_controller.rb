class ArtworkSharesController < ApplicationController

  def create
    new_share = ArtworkShare.new(artwork_id: params[:artwork_id],
      viewer_id: params[:viewer_id])

    if new_share.save
      render json: new_share
    else
      render json: new_share.errors.full_messages, status: :unprocessable_entity
    end
  end

  def destroy
    new_share = ArtworkShare.find(params[:id])
    new_share.destroy
    render json: new_share
  end

  private

  def artwork_shares_params
    params.require(:artwork_share).permit(:artist_id, :viewer_id)
  end
end
