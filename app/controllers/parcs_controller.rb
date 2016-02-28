class ParcsController < ApplicationController
  def index
    render json: {
      meta: {
        count: Parc.count,
        page: 0
      },
      projects: Parc.order(:name)
    }
  end

  def show
    parc = Parc.find(params[:id])
    render json: { parc: parc }
  end

  private

  def parc_params
    params.require(:parc).permit(:name, :description, :city)
  end
end
