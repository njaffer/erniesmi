class ApplicationController < ActionController::Base
  helper Openseadragon::OpenseadragonHelper
 protect_from_forgery unless: -> { request.format.json? }
end
