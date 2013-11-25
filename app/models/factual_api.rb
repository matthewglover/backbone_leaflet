require "factual"

class FactualApi

  attr_reader :rows

  OAUTH_KEY = "gIkOBZRVNBX23bLjwSmNkOIDrPruXl4SPg0ptykE"
  OAUTH_SECRET = "mzTmiUogEQjEKoPBq0duRpNT1g2nHOyJM20k1xVr"

  def getPlacesNear(search_string, latitude, longitude, diameter=500)
    query = factual.table('places')
    query  = query.filters('country' => 'GB')
    query  = query.geo("$circle" => {"$center" => [latitude, longitude], "$meters" => diameter})
    query = query.search(search_string)
    query  = query.sort('name')

    @rows = query.rows
  end

  private

    def factual
      @_factual ||= Factual.new(OAUTH_KEY, OAUTH_SECRET)
    end
end