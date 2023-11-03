class SampleController < ApplicationController
  layout 'sample'

  def index
    @q = Sample.ransack(params[:q])
    @samples = @q.result(distinct: true)
  end
end
