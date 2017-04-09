class Api::V1::CousController < ApplicationController
  def index
    @cous = Cou.all
    render :json => {
      :data => @cous.map { |cou|
        { :name => cou.name,
          :cou_url => api_v1_cou_url(cou.id)
        }
      }
    }
  end

  def show
    @cou = Cou.find(params[:id])

    render :json => {
      :name => @cou.name
        }
  end
end
