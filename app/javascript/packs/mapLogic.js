handler = Gmaps.build('Google');
handler.buildMap({ provider: {}, internal: {id: 'map'}}, function(){
  markers = handler.addMarkers([
    {
      "lat": 51.51284874525074,
      "lng": -0.1573314555616207,
      "picture": {
        "width":  32,
        "height": 32
      },
      "infowindow": "SJSU"
    }
  ]);
  handler.bounds.extendWith(markers);
  handler.fitMapToBounds();
});