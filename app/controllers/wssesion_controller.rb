require 'net/http'

class WssesionController < ApplicationController
    soap_service namespace: 'urn:WashOutSession', camelize_wsdl: :lower
    # get users
    soap_action "getUsers",
                :args   => {},
                :return => [:string]
    def getUsers
      response = Net::HTTP.get('localhost:4001', '/users')
      puts response.body
      render :soap => ['a', 'b']
    end
  end
  