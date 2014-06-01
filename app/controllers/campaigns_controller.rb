class CampaignsController < ApplicationController
  before_action :set_campaign, only: [:show, :edit, :update, :destroy]

  def index
    @campaigns = Campaign.all
  end

  def show
    @campaign = Campaign.find(params[:id])
    @subscriber = @campaign.subscribers.build

    client = Twitter::REST::Client.new do |config|
      config.consumer_key = "kia2Amb3nAzR5zmBBlD1N9WiU"
      config.consumer_secret = "5pzL2X9ZY3jvjenllCyxmVvhOmZEaPGm1YmruC6Hb1E2PNmUGu"
      config.access_token = "507582370-yjgWLEED2Hss8ocGIg6dxqR2nBz71nADJx46bo8E"
      config.access_token_secret = "LarUvoc2cZKNiLlxCOQzDyXcgEqOjMX4s8ClXcLIEYgNa"
    end

    @tweets = client.search(@campaign.hashtags.first.name, :result_type => "recent").take(10)
    # binding.pry
  end

  def new
    @campaign = Campaign.new
    @hashtag = @campaign.hashtags.build
    @background = @campaign.build_background
  end

  def edit
  end

  def create
    @campaign = Campaign.new(campaign_params)

    # binding.pry
    respond_to do |format|
      if @campaign.save
        format.html { redirect_to @campaign, notice: 'Campaign was successfully created.' }
        format.json { render action: 'show', status: :created, location: @campaign }
      else
        format.html { render action: 'new' }
        format.json { render json: @campaign.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /campaigns/1
  # PATCH/PUT /campaigns/1.json
  def update
    respond_to do |format|
      if @campaign.update(campaign_params)
        format.html { redirect_to @campaign, notice: 'Campaign was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @campaign.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /campaigns/1
  # DELETE /campaigns/1.json
  def destroy
    @campaign.destroy
    respond_to do |format|
      format.html { redirect_to campaigns_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_campaign
      @campaign = Campaign.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def campaign_params
      params.require(:campaign).permit(:donation_purpose, :donation, :subscription, :subscription_message, background_attributes: [:id, :body], hashtags_attributes: [:id, :name], subscribers_attributes: [:id, :email, :phone])
    end
end
