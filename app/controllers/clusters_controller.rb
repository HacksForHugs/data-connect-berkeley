class ClustersController < ApplicationController

  def index
    @clusters = Cluster.all
  end

  def show
    @cluster = Cluster.find(params[:id])
  end

  def new
    @cluster = Cluster.new
  end

  def create
    @cluster = Cluster.new(cluster_params)
    if @cluster.save
      redirect_to cluster_path(@cluster)
    else
      redirect_to new_cluster_path()
    end
  end

  def cluster_params
    params.require(:cluster).permit(:title)
  end
end
