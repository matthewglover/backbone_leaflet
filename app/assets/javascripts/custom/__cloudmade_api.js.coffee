class BackboneLeaflet.Custom.CloudmadeAPI
  _.extend @prototype, Backbone.Events

  API_KEY: "ceda08740383477f8dbb3bed2e9c2a47"

  constructor: (options)->
    @format = options.format
    @locale = options.locale
    @country = options.country
    @street = options.street
    @city = options.city
    @housenumber = options.housenumber
    @freetext = options.freetext


  query: ->
    ary = ["http://beta.geocoding.cloudmade.com/v3/#{@API_KEY}/api/geo.location.search.2?",
              "format=#{@format}",
              "&source=OSM",
              "&enc=UTF-8",
              "&limit=10",
              "&locale=#{@locale}",
              "&q=[country=#{@country}]",
              "[street=#{encodeURIComponent(@street)}]",
              "[city=#{@city}]",
              "[housenumber=#{@housenumber}]"
            ]
    ary.join('')

  makeFreeText: ->
    encodeURIComponent " #{@freetext }"
    # str = @freetext.replace(/[\s,;]+/g, '; ')
    # encodeURIComponent(" #{@freetext }")




# window.cm = new BackboneLeaflet.Custom.CloudmadeAPI(format: 'xml', locale: 'en', country: 'England', freetext: '18 Ainsley Street, Bethnal Green, E20DL')
# window.cm = new BackboneLeaflet.Custom.CloudmadeAPI(format: 'xml', locale: 'en', country: 'England', street: 'Ainsley Street', city: 'London', housenumber: '18')
# console.log(window.cm.query())

# http://beta.geocoding.cloudmade.com/v3/8ee2a50541944fb9bcedded5165f09d9/api/geo.location.search.2?format=xml&source=OSM&enc=UTF-8&limit=10&locale=de&q=[country=Germany][street=Karlstr.][city=Leinfelden-Echterdingen][zip=70771][housenumber=12]

# http://beta.geocoding.cloudmade.com/v3/8ee2a50541944fb9bcedded5165f09d9/api/geo.location.search.2?format=xml&source=OSM&enc=UTF-8&limit=10&locale=de&q=[country=Germany]%20Karlstr.%20Leinfelden-Echterdingen%2070771[housenumber=12]