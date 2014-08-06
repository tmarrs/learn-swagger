class SpeakersController < ApplicationController

  def new
    Rails.logger.debug 'DEBUG: entering new()'
    @speaker = Speaker.new

    @speaker.first_name = 'Larson'
    @speaker.last_name = 'Erhard'
    @speaker.company = 'Ecratic'
    @speaker.email = 'larsonrichard@ecratic.com'
    @speaker.tag = 'REST'
    @speaker.tag = 'JSON'
    @speaker.about = 'He is a Senior Ruby on Rails developer with Acme ...'

    Rails.logger.debug "DEBUG: Speaker first_name is #{@speaker.first_name}"
    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @speaker}
    end
  end

end