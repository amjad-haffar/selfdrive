String stylejson = """{
  "version": 8,
  "name": "Navigation",
  "metadata": {
    "mapbox:type": "default",
    "mapbox:origin": "navigation-night-v1",
    "mapbox:sdk-support": {"android": "10.0.0", "ios": "10.0.0", "js": "2.6.0"},
    "mapbox:autocomposite": true,
    "mapbox:groups": {
      "Transit, transit-labels": {
        "name": "Transit, transit-labels",
        "collapsed": true
      },
      "Administrative boundaries, admin": {
        "name": "Administrative boundaries, admin",
        "collapsed": true
      },
      "Transit, bridges": {"name": "Transit, bridges", "collapsed": true},
      "Transit, surface": {"name": "Transit, surface", "collapsed": true},
      "Road network, bridges": {
        "name": "Road network, bridges",
        "collapsed": true
      },
      "Land, water, & sky, water": {
        "name": "Land, water, & sky, water",
        "collapsed": true
      },
      "Road network, tunnels": {
        "name": "Road network, tunnels",
        "collapsed": true
      },
      "Road network, road-labels": {
        "name": "Road network, road-labels",
        "collapsed": true
      },
      "Buildings, built": {"name": "Buildings, built", "collapsed": true},
      "Natural features, natural-labels": {
        "name": "Natural features, natural-labels",
        "collapsed": true
      },
      "Road network, surface": {
        "name": "Road network, surface",
        "collapsed": true
      },
      "Land, water, & sky, built": {
        "name": "Land, water, & sky, built",
        "collapsed": true
      },
      "Place labels, place-labels": {
        "name": "Place labels, place-labels",
        "collapsed": true
      },
      "Transit, ferries": {"name": "Transit, ferries", "collapsed": true},
      "Transit, elevated": {"name": "Transit, elevated", "collapsed": true},
      "Point of interest labels, poi-labels": {
        "name": "Point of interest labels, poi-labels",
        "collapsed": true
      },
      "Road network, tunnels-case": {
        "name": "Road network, tunnels-case",
        "collapsed": true
      },
      "Transit, built": {"name": "Transit, built", "collapsed": true},
      "Road network, surface-icons": {
        "name": "Road network, surface-icons",
        "collapsed": true
      },
      "Land, water, & sky, land": {
        "name": "Land, water, & sky, land",
        "collapsed": true
      },
      "Transit, ferry-aerialway-labels": {
        "name": "Transit, ferry-aerialway-labels",
        "collapsed": true
      }
    },
    "mapbox:decompiler": {
      "id": "cl2pb7612000p14mfdkh2skty",
      "componentVersion": "11.2.0",
      "strata": [
        {
          "id": "navigation-night-v1",
          "order": [
            ["land-and-water", "land"],
            ["land-and-water", "water"],
            ["land-and-water", "built"],
            ["transit", "built"],
            ["buildings", "built"],
            ["road-network", "tunnels-case"],
            ["road-network", "tunnels"],
            ["transit", "ferries"],
            ["road-network", "surface"],
            ["transit", "surface"],
            ["road-network", "surface-icons"],
            ["road-network", "bridges"],
            ["transit", "bridges"],
            ["road-network", "traffic-and-closures"],
            ["buildings", "extruded"],
            ["transit", "elevated"],
            ["admin-boundaries", "admin"],
            ["buildings", "building-labels"],
            ["road-network", "road-labels"],
            ["transit", "ferry-aerialway-labels"],
            ["natural-features", "natural-labels"],
            ["point-of-interest-labels", "poi-labels"],
            ["transit", "transit-labels"],
            ["place-labels", "place-labels"],
            ["land-and-water", "sky"]
          ]
        }
      ],
      "components": {
        "land-and-water": "11.2.0",
        "buildings": "11.1.1",
        "road-network": "11.2.0",
        "admin-boundaries": "11.1.1",
        "natural-features": "11.1.1",
        "point-of-interest-labels": "11.1.1",
        "transit": "11.1.1",
        "place-labels": "11.1.1"
      },
      "propConfig": {
        "land-and-water": {
          "colorGreenspace": "hsl(170, 42%, 39%)",
          "colorAirport": "hsl(230, 18%, 77%)",
          "transitionLandOnZoom": false,
          "colorBase": "hsl(214, 41%, 39%)",
          "colorWater": "hsl(197, 30%, 53%)",
          "colorSchool": "hsl(200, 10%, 80%)",
          "colorMotorist": "hsl(215, 15%, 37%)",
          "waterStyle": "Simple",
          "colorHospital": "hsl(252, 4%, 74%)"
        },
        "buildings": {
          "colorBase": "hsl(214, 41%, 39%)",
          "houseNumbers": false,
          "houseNumbersFont": ["DIN Pro Medium", "Arial Unicode MS Regular"],
          "houseNumbersSize": 1.3
        },
        "road-network": {
          "roadsFont": ["DIN Pro Medium", "Arial Unicode MS Regular"],
          "colorRoad": "hsl(213, 14%, 19%)",
          "roadNetwork": "Navigation",
          "colorRoadLabel": "hsl(0, 0%, 90%)",
          "colorBase": "hsl(214, 41%, 39%)",
          "iconLightness": -0.3,
          "roadsSize": 1.1,
          "colorMotorwayTrunk": "hsl(215, 28%, 48%)",
          "colorTraffic": "hsl(0, 80%, 65%)",
          "lowCongestion": false,
          "colorRoadOutline": "hsl(217, 20%, 29%)"
        },
        "admin-boundaries": {
          "colorBase": "hsl(214, 41%, 39%)",
          "colorPlaceLabel": "hsl(215, 30%, 80%)",
          "colorAdminBoundary": "hsl(250, 10%, 65%)"
        },
        "natural-features": {
          "colorBase": "hsl(214, 41%, 39%)",
          "colorWater": "hsl(197, 30%, 53%)",
          "colorPoi": "hsl(236, 6%, 98%)",
          "density": 0,
          "poiEtcSize": 1.1
        },
        "point-of-interest-labels": {
          "educationDensity": 1,
          "commercialServicesDensity": 0,
          "generalDensity": 0,
          "sportAndLeisureDensity": 0,
          "colorGreenspace": "hsl(170, 42%, 39%)",
          "artsAndEntertainmentDensity": 0,
          "parkLikeDensity": 1,
          "colorPoi": "hsl(236, 6%, 98%)",
          "foodAndDrinkDensity": 0,
          "historicDensity": 0,
          "placeLikeDensity": 0,
          "poiEtcSize": 1.1,
          "lodgingDensity": 0,
          "colorGreenspaceLabel": "hsl(150, 51%, 67%)",
          "industrialDensity": 0,
          "storeLikeDensity": 0,
          "landmarkDensity": 2,
          "motoristDensity": 3,
          "colorBase": "hsl(214, 41%, 39%)",
          "buildingDensity": 0,
          "controlDensityByClass": true,
          "colorSchool": "hsl(200, 10%, 80%)",
          "medicalDensity": 1,
          "religionDensity": 0,
          "foodAndDrinkStoresDensity": 0,
          "colorHospital": "hsl(252, 4%, 74%)",
          "publicFacilitiesDensity": 0,
          "visitorAmenitiesDensity": 0
        },
        "transit": {
          "colorRoad": "hsl(213, 14%, 19%)",
          "colorAirport": "hsl(230, 18%, 77%)",
          "poiEtcSize": 1.1,
          "colorTransit": "hsl(230, 54%, 85%)",
          "colorRoadLabel": "hsl(0, 0%, 90%)",
          "transitLabels": false,
          "colorBase": "hsl(214, 41%, 39%)",
          "colorWater": "hsl(197, 30%, 53%)",
          "iconLightness": -0.3,
          "roadsSize": 1.3,
          "colorRoadOutline": "hsl(217, 20%, 29%)"
        },
        "place-labels": {
          "statesSize": 1.2,
          "settlementsMinorSize": 1.1,
          "settlementsMajorSize": 1.3,
          "colorPlaceLabel": "hsl(215, 30%, 80%)",
          "settlementSubdivisionsSize": 1.1,
          "colorBase": "hsl(214, 41%, 39%)",
          "countriesSize": 1.4,
          "settlementSubdivisionsDensity": 3,
          "settlementsDensity": 2,
          "settlementSubdivisionsFont": [
            "DIN Pro Medium",
            "Arial Unicode MS Regular"
          ]
        }
      }
    },
    "mapbox:uiParadigm": "components"
  },
  "center": [-73.99086505692472, 40.71393065779898],
  "zoom": 9.331548926153907,
  "bearing": 0,
  "pitch": 0,
  "sources": {
    "composite": {
      "url": "mapbox://mapbox.mapbox-streets-v8,mapbox.mapbox-terrain-v2",
      "type": "vector"
    }
  },
  "sprite":
      "mapbox://sprites/amjadalhaffar/cl2pb7612000p14mfdkh2skty/4kcci8frzl7zmxssq3xtm1vn2",
  "glyphs": "mapbox://fonts/mapbox/{fontstack}/{range}.pbf",
  "layers": [
    {
      "id": "land",
      "type": "background",
      "metadata": {
        "mapbox:featureComponent": "land-and-water",
        "mapbox:group": "Land, water, & sky, land"
      },
      "layout": {},
      "paint": {"background-color": "hsl(214, 39%, 27%)"}
    },
    {
      "id": "landcover",
      "type": "fill",
      "metadata": {
        "mapbox:featureComponent": "land-and-water",
        "mapbox:group": "Land, water, & sky, land"
      },
      "source": "composite",
      "source-layer": "landcover",
      "maxzoom": 7,
      "layout": {},
      "paint": {
        "fill-color": [
          "match",
          ["get", "class"],
          "snow",
          "hsl(214, 41%, 49%)",
          "hsl(152, 42%, 14%)"
        ],
        "fill-opacity": [
          "interpolate",
          ["exponential", 1.5],
          ["zoom"],
          2,
          0.3,
          7,
          0
        ],
        "fill-antialias": false
      }
    },
    {
      "id": "national-park",
      "type": "fill",
      "metadata": {
        "mapbox:featureComponent": "land-and-water",
        "mapbox:group": "Land, water, & sky, land"
      },
      "source": "composite",
      "source-layer": "landuse_overlay",
      "minzoom": 5,
      "filter": [
        "==",
        ["get", "class"],
        "national_park"
      ],
      "layout": {},
      "paint": {
        "fill-color": "hsl(170, 42%, 39%)",
        "fill-opacity": [
          "interpolate",
          ["linear"],
          ["zoom"],
          5,
          0,
          6,
          0.5,
          10,
          0.5
        ]
      }
    },
    {
      "id": "landuse",
      "type": "fill",
      "metadata": {
        "mapbox:featureComponent": "land-and-water",
        "mapbox:group": "Land, water, & sky, land"
      },
      "source": "composite",
      "source-layer": "landuse",
      "minzoom": 5,
      "filter": [
        "match",
        ["get", "class"],
        ["park", "airport", "glacier", "pitch", "sand", "facility"],
        true,
        "cemetery",
        true,
        "school",
        true,
        "hospital",
        true,
        "parking",
        [
          "step",
          ["zoom"],
          false,
          15,
          true
        ],
        false
      ],
      "layout": {},
      "paint": {
        "fill-color": [
          "interpolate",
          ["linear"],
          ["zoom"],
          15,
          [
            "match",
            ["get", "class"],
            "park",
            "hsl(170, 42%, 39%)",
            "airport",
            "hsl(230, 42%, 32%)",
            "cemetery",
            "hsl(152, 41%, 45%)",
            "glacier",
            "hsl(197, 10%, 71%)",
            "hospital",
            "hsl(252, 27%, 28%)",
            "pitch",
            "hsl(170, 43%, 34%)",
            "sand",
            "hsl(213, 42%, 15%)",
            "school",
            "hsl(200, 29%, 22%)",
            "parking",
            "hsl(215, 15%, 37%)",
            "hsl(214, 42%, 25%)"
          ],
          16,
          [
            "match",
            ["get", "class"],
            "park",
            "hsl(170, 42%, 39%)",
            "airport",
            "hsl(230, 56%, 30%)",
            "cemetery",
            "hsl(152, 41%, 45%)",
            "glacier",
            "hsl(197, 10%, 71%)",
            "hospital",
            "hsl(252, 11%, 30%)",
            "pitch",
            "hsl(170, 43%, 34%)",
            "sand",
            "hsl(213, 42%, 15%)",
            "school",
            "hsl(200, 29%, 22%)",
            "parking",
            "hsl(215, 15%, 37%)",
            "hsl(214, 42%, 25%)"
          ]
        ],
        "fill-opacity": [
          "interpolate",
          ["linear"],
          ["zoom"],
          5,
          0,
          6,
          [
            "match",
            ["get", "class"],
            "glacier",
            0.5,
            1
          ]
        ]
      }
    },
    {
      "id": "pitch-outline",
      "type": "line",
      "metadata": {
        "mapbox:featureComponent": "land-and-water",
        "mapbox:group": "Land, water, & sky, land"
      },
      "source": "composite",
      "source-layer": "landuse",
      "minzoom": 15,
      "filter": [
        "==",
        ["get", "class"],
        "pitch"
      ],
      "layout": {},
      "paint": {"line-color": "hsl(152, 24%, 14%)"}
    },
    {
      "id": "waterway",
      "type": "line",
      "metadata": {
        "mapbox:featureComponent": "land-and-water",
        "mapbox:group": "Land, water, & sky, water"
      },
      "source": "composite",
      "source-layer": "waterway",
      "minzoom": 8,
      "layout": {
        "line-cap": [
          "step",
          ["zoom"],
          "butt",
          11,
          "round"
        ],
        "line-join": "round"
      },
      "paint": {
        "line-color": "hsl(197, 30%, 53%)",
        "line-width": [
          "interpolate",
          ["exponential", 1.3],
          ["zoom"],
          9,
          [
            "match",
            ["get", "class"],
            ["canal", "river"],
            0.1,
            0
          ],
          20,
          [
            "match",
            ["get", "class"],
            ["canal", "river"],
            8,
            3
          ]
        ],
        "line-opacity": [
          "interpolate",
          ["linear"],
          ["zoom"],
          8,
          0,
          8.5,
          1
        ]
      }
    },
    {
      "id": "water",
      "type": "fill",
      "metadata": {
        "mapbox:featureComponent": "land-and-water",
        "mapbox:group": "Land, water, & sky, water"
      },
      "source": "composite",
      "source-layer": "water",
      "layout": {},
      "paint": {"fill-color": "hsl(197, 30%, 53%)"}
    },
    {
      "id": "land-structure-polygon",
      "type": "fill",
      "metadata": {
        "mapbox:featureComponent": "land-and-water",
        "mapbox:group": "Land, water, & sky, built"
      },
      "source": "composite",
      "source-layer": "structure",
      "minzoom": 13,
      "filter": [
        "all",
        [
          "==",
          ["geometry-type"],
          "Polygon"
        ],
        [
          "==",
          ["get", "class"],
          "land"
        ]
      ],
      "layout": {},
      "paint": {"fill-color": "hsl(214, 39%, 27%)"}
    },
    {
      "id": "land-structure-line",
      "type": "line",
      "metadata": {
        "mapbox:featureComponent": "land-and-water",
        "mapbox:group": "Land, water, & sky, built"
      },
      "source": "composite",
      "source-layer": "structure",
      "minzoom": 13,
      "filter": [
        "all",
        [
          "==",
          ["geometry-type"],
          "LineString"
        ],
        [
          "==",
          ["get", "class"],
          "land"
        ]
      ],
      "layout": {"line-cap": "round"},
      "paint": {
        "line-width": [
          "interpolate",
          ["exponential", 1.99],
          ["zoom"],
          14,
          0.75,
          20,
          40
        ],
        "line-color": "hsl(214, 39%, 27%)"
      }
    },
    {
      "id": "aeroway-polygon",
      "type": "fill",
      "metadata": {
        "mapbox:featureComponent": "transit",
        "mapbox:group": "Transit, built"
      },
      "source": "composite",
      "source-layer": "aeroway",
      "minzoom": 11,
      "filter": [
        "all",
        [
          "==",
          ["geometry-type"],
          "Polygon"
        ],
        [
          "match",
          ["get", "type"],
          ["runway", "taxiway", "helipad"],
          true,
          false
        ]
      ],
      "layout": {},
      "paint": {
        "fill-color": [
          "interpolate",
          ["linear"],
          ["zoom"],
          15,
          "hsl(230, 35%, 23%)",
          16,
          "hsl(230, 26%, 25%)"
        ],
        "fill-opacity": [
          "interpolate",
          ["linear"],
          ["zoom"],
          11,
          0,
          11.5,
          1
        ]
      }
    },
    {
      "id": "aeroway-line",
      "type": "line",
      "metadata": {
        "mapbox:featureComponent": "transit",
        "mapbox:group": "Transit, built"
      },
      "source": "composite",
      "source-layer": "aeroway",
      "minzoom": 9,
      "filter": [
        "==",
        ["geometry-type"],
        "LineString"
      ],
      "layout": {},
      "paint": {
        "line-color": [
          "interpolate",
          ["linear"],
          ["zoom"],
          15,
          "hsl(230, 35%, 23%)",
          16,
          "hsl(230, 26%, 25%)"
        ],
        "line-width": [
          "interpolate",
          ["exponential", 1.5],
          ["zoom"],
          9,
          [
            "match",
            ["get", "type"],
            "runway",
            1,
            0.5
          ],
          18,
          [
            "match",
            ["get", "type"],
            "runway",
            80,
            20
          ]
        ]
      }
    },
    {
      "id": "building-outline",
      "type": "line",
      "metadata": {
        "mapbox:featureComponent": "buildings",
        "mapbox:group": "Buildings, built"
      },
      "source": "composite",
      "source-layer": "building",
      "minzoom": 15,
      "filter": [
        "all",
        [
          "!=",
          ["get", "type"],
          "building:part"
        ],
        [
          "==",
          ["get", "underground"],
          "false"
        ]
      ],
      "layout": {},
      "paint": {
        "line-color": "hsl(214, 35%, 22%)",
        "line-width": [
          "interpolate",
          ["exponential", 1.5],
          ["zoom"],
          15,
          0.75,
          20,
          3
        ],
        "line-opacity": [
          "interpolate",
          ["linear"],
          ["zoom"],
          15,
          0,
          16,
          1
        ]
      }
    },
    {
      "id": "building",
      "type": "fill",
      "metadata": {
        "mapbox:featureComponent": "buildings",
        "mapbox:group": "Buildings, built"
      },
      "source": "composite",
      "source-layer": "building",
      "minzoom": 15,
      "filter": [
        "all",
        [
          "!=",
          ["get", "type"],
          "building:part"
        ],
        [
          "==",
          ["get", "underground"],
          "false"
        ]
      ],
      "layout": {},
      "paint": {
        "fill-color": [
          "interpolate",
          ["linear"],
          ["zoom"],
          15,
          "hsl(214, 38%, 27%)",
          16,
          "hsl(214, 34%, 24%)"
        ],
        "fill-opacity": [
          "interpolate",
          ["linear"],
          ["zoom"],
          15,
          0,
          16,
          1
        ],
        "fill-outline-color": "hsl(214, 35%, 22%)"
      }
    },
    {
      "id": "tunnel-minor-case-navigation",
      "type": "line",
      "metadata": {
        "mapbox:featureComponent": "road-network",
        "mapbox:group": "Road network, tunnels-case"
      },
      "source": "composite",
      "source-layer": "road",
      "minzoom": 15,
      "filter": [
        "all",
        [
          "==",
          ["get", "structure"],
          "tunnel"
        ],
        [
          "match",
          ["get", "class"],
          ["track", "secondary_link", "tertiary_link", "service"],
          true,
          false
        ],
        [
          "==",
          ["geometry-type"],
          "LineString"
        ]
      ],
      "layout": {},
      "paint": {
        "line-width": [
          "interpolate",
          ["exponential", 1.2],
          ["zoom"],
          15,
          0.75,
          18,
          1.5
        ],
        "line-color": "hsl(217, 13%, 16%)",
        "line-gap-width": [
          "interpolate",
          ["exponential", 1.5],
          ["zoom"],
          15,
          [
            "match",
            ["get", "class"],
            "track",
            1,
            0.5
          ],
          18,
          10
        ],
        "line-dasharray": [3, 3]
      }
    },
    {
      "id": "tunnel-street-low-navigation",
      "type": "line",
      "metadata": {
        "mapbox:featureComponent": "road-network",
        "mapbox:group": "Road network, tunnels-case"
      },
      "source": "composite",
      "source-layer": "road",
      "minzoom": 13,
      "maxzoom": 14,
      "filter": [
        "all",
        [
          "==",
          ["get", "structure"],
          "tunnel"
        ],
        [
          "match",
          ["get", "class"],
          ["street", "street_limited", "primary_link"],
          true,
          false
        ],
        [
          "==",
          ["geometry-type"],
          "LineString"
        ]
      ],
      "layout": {},
      "paint": {
        "line-width": [
          "interpolate",
          ["exponential", 1.5],
          ["zoom"],
          12,
          0.5,
          14,
          2
        ],
        "line-color": "hsl(213, 14%, 19%)"
      }
    },
    {
      "id": "tunnel-street-case-navigation",
      "type": "line",
      "metadata": {
        "mapbox:featureComponent": "road-network",
        "mapbox:group": "Road network, tunnels-case"
      },
      "source": "composite",
      "source-layer": "road",
      "minzoom": 14,
      "filter": [
        "all",
        [
          "==",
          ["get", "structure"],
          "tunnel"
        ],
        [
          "match",
          ["get", "class"],
          ["street", "street_limited", "primary_link"],
          true,
          false
        ],
        [
          "==",
          ["geometry-type"],
          "LineString"
        ]
      ],
      "layout": {},
      "paint": {
        "line-width": [
          "interpolate",
          ["exponential", 1.2],
          ["zoom"],
          10,
          0.5,
          18,
          2
        ],
        "line-color": "hsl(217, 13%, 16%)",
        "line-gap-width": [
          "interpolate",
          ["exponential", 1.5],
          ["zoom"],
          14,
          2,
          18,
          20
        ],
        "line-dasharray": [3, 3]
      }
    },
    {
      "id": "tunnel-secondary-tertiary-case-navigation",
      "type": "line",
      "metadata": {
        "mapbox:featureComponent": "road-network",
        "mapbox:group": "Road network, tunnels-case"
      },
      "source": "composite",
      "source-layer": "road",
      "minzoom": 12,
      "filter": [
        "all",
        [
          "==",
          ["get", "structure"],
          "tunnel"
        ],
        [
          "match",
          ["get", "class"],
          ["secondary", "tertiary"],
          true,
          false
        ],
        [
          "==",
          ["geometry-type"],
          "LineString"
        ]
      ],
      "layout": {},
      "paint": {
        "line-width": [
          "interpolate",
          ["exponential", 1.2],
          ["zoom"],
          10,
          0.75,
          18,
          2
        ],
        "line-color": "hsl(217, 13%, 16%)",
        "line-gap-width": [
          "interpolate",
          ["exponential", 1.5],
          ["zoom"],
          10,
          0.75,
          18,
          28
        ],
        "line-dasharray": [3, 3]
      }
    },
    {
      "id": "tunnel-primary-case-navigation",
      "type": "line",
      "metadata": {
        "mapbox:featureComponent": "road-network",
        "mapbox:group": "Road network, tunnels-case"
      },
      "source": "composite",
      "source-layer": "road",
      "minzoom": 10,
      "filter": [
        "all",
        [
          "==",
          ["get", "structure"],
          "tunnel"
        ],
        [
          "==",
          ["get", "class"],
          "primary"
        ],
        [
          "==",
          ["geometry-type"],
          "LineString"
        ]
      ],
      "layout": {},
      "paint": {
        "line-width": [
          "interpolate",
          ["exponential", 1.2],
          ["zoom"],
          10,
          1,
          18,
          2
        ],
        "line-color": "hsl(217, 13%, 16%)",
        "line-gap-width": [
          "interpolate",
          ["exponential", 1.5],
          ["zoom"],
          10,
          1.125,
          18,
          32
        ],
        "line-dasharray": [3, 3]
      }
    },
    {
      "id": "tunnel-major-link-case-navigation",
      "type": "line",
      "metadata": {
        "mapbox:featureComponent": "road-network",
        "mapbox:group": "Road network, tunnels-case"
      },
      "source": "composite",
      "source-layer": "road",
      "minzoom": 13,
      "filter": [
        "all",
        [
          "==",
          ["get", "structure"],
          "tunnel"
        ],
        [
          "match",
          ["get", "class"],
          ["motorway_link", "trunk_link"],
          true,
          false
        ],
        [
          "==",
          ["geometry-type"],
          "LineString"
        ]
      ],
      "layout": {},
      "paint": {
        "line-width": [
          "interpolate",
          ["exponential", 1.2],
          ["zoom"],
          10,
          0.75,
          18,
          2
        ],
        "line-color": [
          "match",
          ["get", "class"],
          "motorway_link",
          "hsl(215, 18%, 28%)",
          "hsl(221, 13%, 28%)"
        ],
        "line-gap-width": [
          "interpolate",
          ["exponential", 1.5],
          ["zoom"],
          12,
          0.75,
          14,
          2,
          18,
          20
        ],
        "line-dasharray": [3, 3]
      }
    },
    {
      "id": "tunnel-motorway-trunk-case-navigation",
      "type": "line",
      "metadata": {
        "mapbox:featureComponent": "road-network",
        "mapbox:group": "Road network, tunnels-case"
      },
      "source": "composite",
      "source-layer": "road",
      "minzoom": 13,
      "filter": [
        "all",
        [
          "==",
          ["get", "structure"],
          "tunnel"
        ],
        [
          "match",
          ["get", "class"],
          ["motorway", "trunk"],
          true,
          false
        ],
        [
          "==",
          ["geometry-type"],
          "LineString"
        ]
      ],
      "layout": {},
      "paint": {
        "line-width": [
          "interpolate",
          ["exponential", 1.2],
          ["zoom"],
          10,
          1,
          18,
          2
        ],
        "line-color": [
          "match",
          ["get", "class"],
          "motorway",
          "hsl(215, 18%, 28%)",
          "hsl(221, 13%, 28%)"
        ],
        "line-gap-width": [
          "interpolate",
          ["exponential", 1.5],
          ["zoom"],
          5,
          1.25,
          18,
          32
        ],
        "line-dasharray": [3, 3]
      }
    },
    {
      "id": "tunnel-construction-navigation",
      "type": "line",
      "metadata": {
        "mapbox:featureComponent": "road-network",
        "mapbox:group": "Road network, tunnels-case"
      },
      "source": "composite",
      "source-layer": "road",
      "minzoom": 14,
      "filter": [
        "all",
        [
          "==",
          ["get", "structure"],
          "tunnel"
        ],
        [
          "==",
          ["get", "class"],
          "construction"
        ],
        [
          "==",
          ["geometry-type"],
          "LineString"
        ]
      ],
      "layout": {},
      "paint": {
        "line-width": [
          "interpolate",
          ["exponential", 1.5],
          ["zoom"],
          14,
          2,
          18,
          20
        ],
        "line-color": "hsl(217, 20%, 29%)",
        "line-dasharray": [
          "step",
          ["zoom"],
          [
            "literal",
            [0.4, 0.8]
          ],
          15,
          [
            "literal",
            [0.3, 0.6]
          ],
          16,
          [
            "literal",
            [0.2, 0.3]
          ],
          17,
          [
            "literal",
            [0.2, 0.25]
          ],
          18,
          [
            "literal",
            [0.15, 0.15]
          ]
        ]
      }
    },
    {
      "id": "tunnel-major-link-navigation",
      "type": "line",
      "metadata": {
        "mapbox:featureComponent": "road-network",
        "mapbox:group": "Road network, tunnels"
      },
      "source": "composite",
      "source-layer": "road",
      "minzoom": 13,
      "filter": [
        "all",
        [
          "==",
          ["get", "structure"],
          "tunnel"
        ],
        [
          "match",
          ["get", "class"],
          ["motorway_link", "trunk_link"],
          true,
          false
        ],
        [
          "==",
          ["geometry-type"],
          "LineString"
        ]
      ],
      "layout": {},
      "paint": {
        "line-width": [
          "interpolate",
          ["exponential", 1.5],
          ["zoom"],
          12,
          0.75,
          14,
          2,
          18,
          20
        ],
        "line-color": [
          "match",
          ["get", "class"],
          "motorway",
          "hsl(215, 21%, 50%)",
          "hsl(221, 21%, 50%)"
        ]
      }
    },
    {
      "id": "tunnel-minor-navigation",
      "type": "line",
      "metadata": {
        "mapbox:featureComponent": "road-network",
        "mapbox:group": "Road network, tunnels"
      },
      "source": "composite",
      "source-layer": "road",
      "minzoom": 15,
      "filter": [
        "all",
        [
          "==",
          ["get", "structure"],
          "tunnel"
        ],
        [
          "match",
          ["get", "class"],
          ["track", "secondary_link", "tertiary_link", "service"],
          true,
          false
        ],
        [
          "==",
          ["geometry-type"],
          "LineString"
        ]
      ],
      "layout": {},
      "paint": {
        "line-width": [
          "interpolate",
          ["exponential", 1.5],
          ["zoom"],
          15,
          [
            "match",
            ["get", "class"],
            "track",
            1,
            0.5
          ],
          18,
          10
        ],
        "line-color": "hsl(213, 14%, 19%)"
      }
    },
    {
      "id": "tunnel-street-navigation",
      "type": "line",
      "metadata": {
        "mapbox:featureComponent": "road-network",
        "mapbox:group": "Road network, tunnels"
      },
      "source": "composite",
      "source-layer": "road",
      "minzoom": 14,
      "filter": [
        "all",
        [
          "==",
          ["get", "structure"],
          "tunnel"
        ],
        [
          "match",
          ["get", "class"],
          ["street", "street_limited", "primary_link"],
          true,
          false
        ],
        [
          "==",
          ["geometry-type"],
          "LineString"
        ]
      ],
      "layout": {"line-cap": "round", "line-join": "round"},
      "paint": {
        "line-width": [
          "interpolate",
          ["exponential", 1.5],
          ["zoom"],
          12,
          0.5,
          14,
          2,
          18,
          20
        ],
        "line-color": "hsl(213, 14%, 19%)"
      }
    },
    {
      "id": "tunnel-secondary-tertiary-navigation",
      "type": "line",
      "metadata": {
        "mapbox:featureComponent": "road-network",
        "mapbox:group": "Road network, tunnels"
      },
      "source": "composite",
      "source-layer": "road",
      "minzoom": 13,
      "filter": [
        "all",
        [
          "==",
          ["get", "structure"],
          "tunnel"
        ],
        [
          "match",
          ["get", "class"],
          ["secondary", "tertiary"],
          true,
          false
        ],
        [
          "==",
          ["geometry-type"],
          "LineString"
        ]
      ],
      "layout": {},
      "paint": {
        "line-width": [
          "interpolate",
          ["exponential", 1.5],
          ["zoom"],
          10,
          0.75,
          18,
          28
        ],
        "line-color": "hsl(213, 14%, 19%)"
      }
    },
    {
      "id": "tunnel-primary-navigation",
      "type": "line",
      "metadata": {
        "mapbox:featureComponent": "road-network",
        "mapbox:group": "Road network, tunnels"
      },
      "source": "composite",
      "source-layer": "road",
      "minzoom": 13,
      "filter": [
        "all",
        [
          "==",
          ["get", "structure"],
          "tunnel"
        ],
        [
          "==",
          ["get", "class"],
          "primary"
        ],
        [
          "==",
          ["geometry-type"],
          "LineString"
        ]
      ],
      "layout": {},
      "paint": {
        "line-width": [
          "interpolate",
          ["exponential", 1.5],
          ["zoom"],
          10,
          1.125,
          18,
          32
        ],
        "line-color": "hsl(213, 14%, 19%)"
      }
    },
    {
      "id": "tunnel-oneway-arrow-blue-navigation",
      "type": "symbol",
      "metadata": {
        "mapbox:featureComponent": "road-network",
        "mapbox:group": "Road network, tunnels"
      },
      "source": "composite",
      "source-layer": "road",
      "minzoom": 15,
      "filter": [
        "all",
        [
          "==",
          ["get", "structure"],
          "tunnel"
        ],
        [
          "==",
          ["get", "oneway"],
          "true"
        ],
        [
          "step",
          ["zoom"],
          [
            "match",
            ["get", "class"],
            ["primary", "secondary", "street", "street_limited", "tertiary"],
            true,
            false
          ],
          16,
          [
            "match",
            ["get", "class"],
            [
              "primary",
              "secondary",
              "tertiary",
              "street",
              "street_limited",
              "primary_link",
              "secondary_link",
              "tertiary_link",
              "service",
              "track"
            ],
            true,
            false
          ]
        ]
      ],
      "layout": {
        "symbol-placement": "line",
        "symbol-spacing": [
          "interpolate",
          ["linear"],
          ["zoom"],
          15,
          400,
          18,
          600,
          22,
          1200
        ],
        "icon-image": [
          "step",
          ["zoom"],
          "oneway-small",
          18,
          "oneway-large"
        ],
        "icon-size": [
          "interpolate",
          ["exponential", 1.5],
          ["zoom"],
          15,
          0.25,
          20,
          1
        ],
        "icon-rotation-alignment": "map"
      },
      "paint": {}
    },
    {
      "id": "tunnel-motorway-trunk-navigation",
      "type": "line",
      "metadata": {
        "mapbox:featureComponent": "road-network",
        "mapbox:group": "Road network, tunnels"
      },
      "source": "composite",
      "source-layer": "road",
      "minzoom": 13,
      "filter": [
        "all",
        [
          "==",
          ["get", "structure"],
          "tunnel"
        ],
        [
          "match",
          ["get", "class"],
          ["motorway", "trunk"],
          true,
          false
        ],
        [
          "==",
          ["geometry-type"],
          "LineString"
        ]
      ],
      "layout": {},
      "paint": {
        "line-width": [
          "interpolate",
          ["exponential", 1.5],
          ["zoom"],
          5,
          1.25,
          18,
          32
        ],
        "line-color": [
          "match",
          ["get", "class"],
          "motorway",
          "hsl(215, 21%, 50%)",
          "hsl(221, 21%, 50%)"
        ]
      }
    },
    {
      "id": "tunnel-oneway-arrow-white-navigation",
      "type": "symbol",
      "metadata": {
        "mapbox:featureComponent": "road-network",
        "mapbox:group": "Road network, tunnels"
      },
      "source": "composite",
      "source-layer": "road",
      "minzoom": 15,
      "filter": [
        "all",
        [
          "==",
          ["get", "structure"],
          "tunnel"
        ],
        [
          "match",
          ["get", "class"],
          ["motorway", "motorway_link", "trunk", "trunk_link"],
          true,
          false
        ],
        [
          "==",
          ["get", "oneway"],
          "true"
        ]
      ],
      "layout": {
        "symbol-placement": "line",
        "symbol-spacing": [
          "interpolate",
          ["linear"],
          ["zoom"],
          15,
          400,
          18,
          600,
          22,
          1200
        ],
        "icon-image": [
          "step",
          ["zoom"],
          "oneway-white-small",
          18,
          "oneway-white-large"
        ],
        "icon-size": [
          "interpolate",
          ["exponential", 1.5],
          ["zoom"],
          15,
          0.4,
          20,
          1
        ]
      },
      "paint": {}
    },
    {
      "id": "ferry",
      "type": "line",
      "metadata": {
        "mapbox:featureComponent": "transit",
        "mapbox:group": "Transit, ferries"
      },
      "source": "composite",
      "source-layer": "road",
      "minzoom": 8,
      "filter": [
        "==",
        ["get", "type"],
        "ferry"
      ],
      "layout": {
        "line-join": [
          "step",
          ["zoom"],
          "miter",
          14,
          "round"
        ]
      },
      "paint": {
        "line-color": [
          "interpolate",
          ["linear"],
          ["zoom"],
          15,
          "hsl(206, 23%, 46%)",
          17,
          "hsl(231, 23%, 46%)"
        ],
        "line-width": [
          "interpolate",
          ["exponential", 1.5],
          ["zoom"],
          14,
          0.5,
          20,
          1
        ],
        "line-dasharray": [
          "step",
          ["zoom"],
          [
            "literal",
            [1, 0]
          ],
          13,
          [
            "literal",
            [12, 4]
          ]
        ]
      }
    },
    {
      "id": "ferry-auto",
      "type": "line",
      "metadata": {
        "mapbox:featureComponent": "transit",
        "mapbox:group": "Transit, ferries"
      },
      "source": "composite",
      "source-layer": "road",
      "filter": [
        "==",
        ["get", "type"],
        "ferry_auto"
      ],
      "layout": {
        "line-join": [
          "step",
          ["zoom"],
          "miter",
          14,
          "round"
        ]
      },
      "paint": {
        "line-color": [
          "interpolate",
          ["linear"],
          ["zoom"],
          15,
          "hsl(206, 23%, 46%)",
          17,
          "hsl(231, 23%, 46%)"
        ],
        "line-width": [
          "interpolate",
          ["exponential", 1.5],
          ["zoom"],
          14,
          0.5,
          20,
          1
        ]
      }
    },
    {
      "id": "turning-feature-outline-navigation",
      "type": "circle",
      "metadata": {
        "mapbox:featureComponent": "road-network",
        "mapbox:group": "Road network, surface"
      },
      "source": "composite",
      "source-layer": "road",
      "minzoom": 15,
      "filter": [
        "all",
        [
          "==",
          ["geometry-type"],
          "Point"
        ],
        [
          "match",
          ["get", "class"],
          ["turning_circle", "turning_loop"],
          true,
          false
        ]
      ],
      "layout": {},
      "paint": {
        "circle-radius": [
          "interpolate",
          ["linear"],
          ["zoom"],
          15,
          3.2,
          16,
          6,
          18,
          17
        ],
        "circle-color": "hsl(213, 14%, 19%)",
        "circle-stroke-width": [
          "interpolate",
          ["linear"],
          ["zoom"],
          15,
          0.8,
          16,
          1.2,
          18,
          2
        ],
        "circle-stroke-color": "hsl(217, 20%, 29%)"
      }
    },
    {
      "id": "road-minor-case-navigation",
      "type": "line",
      "metadata": {
        "mapbox:featureComponent": "road-network",
        "mapbox:group": "Road network, surface"
      },
      "source": "composite",
      "source-layer": "road",
      "minzoom": 15,
      "filter": [
        "all",
        [
          "match",
          ["get", "class"],
          ["track", "secondary_link", "tertiary_link", "service"],
          true,
          false
        ],
        [
          "match",
          ["get", "structure"],
          ["none", "ford"],
          true,
          false
        ],
        [
          "==",
          ["geometry-type"],
          "LineString"
        ]
      ],
      "layout": {"line-join": "round", "line-cap": "round"},
      "paint": {
        "line-width": [
          "interpolate",
          ["exponential", 1.2],
          ["zoom"],
          15,
          0.75,
          18,
          1.5
        ],
        "line-color": "hsl(217, 20%, 29%)",
        "line-gap-width": [
          "interpolate",
          ["exponential", 1.5],
          ["zoom"],
          15,
          [
            "match",
            ["get", "class"],
            "track",
            1,
            0.5
          ],
          18,
          10
        ]
      }
    },
    {
      "id": "road-street-low-navigation",
      "type": "line",
      "metadata": {
        "mapbox:featureComponent": "road-network",
        "mapbox:group": "Road network, surface"
      },
      "source": "composite",
      "source-layer": "road",
      "minzoom": 11,
      "maxzoom": 14,
      "filter": [
        "all",
        [
          "match",
          ["get", "class"],
          ["street", "street_limited", "primary_link"],
          true,
          false
        ],
        [
          "match",
          ["get", "structure"],
          ["none", "ford"],
          true,
          false
        ],
        [
          "==",
          ["geometry-type"],
          "LineString"
        ]
      ],
      "layout": {
        "line-cap": [
          "step",
          ["zoom"],
          "butt",
          14,
          "round"
        ],
        "line-join": [
          "step",
          ["zoom"],
          "miter",
          14,
          "round"
        ]
      },
      "paint": {
        "line-width": [
          "interpolate",
          ["exponential", 1.5],
          ["zoom"],
          12,
          0.5,
          14,
          2
        ],
        "line-color": "hsl(213, 14%, 19%)"
      }
    },
    {
      "id": "road-street-case-navigation",
      "type": "line",
      "metadata": {
        "mapbox:featureComponent": "road-network",
        "mapbox:group": "Road network, surface"
      },
      "source": "composite",
      "source-layer": "road",
      "minzoom": 14,
      "filter": [
        "all",
        [
          "match",
          ["get", "class"],
          ["street", "street_limited", "primary_link"],
          true,
          false
        ],
        [
          "match",
          ["get", "structure"],
          ["none", "ford"],
          true,
          false
        ],
        [
          "==",
          ["geometry-type"],
          "LineString"
        ]
      ],
      "layout": {
        "line-cap": [
          "step",
          ["zoom"],
          "butt",
          13,
          "round"
        ],
        "line-join": [
          "step",
          ["zoom"],
          "miter",
          13,
          "round"
        ]
      },
      "paint": {
        "line-width": [
          "interpolate",
          ["exponential", 1.2],
          ["zoom"],
          10,
          0.5,
          18,
          2
        ],
        "line-color": "hsl(217, 20%, 29%)",
        "line-gap-width": [
          "interpolate",
          ["exponential", 1.5],
          ["zoom"],
          14,
          2,
          18,
          20
        ]
      }
    },
    {
      "id": "road-secondary-tertiary-case-navigation",
      "type": "line",
      "metadata": {
        "mapbox:featureComponent": "road-network",
        "mapbox:group": "Road network, surface"
      },
      "source": "composite",
      "source-layer": "road",
      "minzoom": 12,
      "filter": [
        "all",
        [
          "match",
          ["get", "class"],
          ["secondary", "tertiary"],
          true,
          false
        ],
        [
          "match",
          ["get", "structure"],
          ["none", "ford"],
          true,
          false
        ],
        [
          "==",
          ["geometry-type"],
          "LineString"
        ]
      ],
      "layout": {"line-cap": "round", "line-join": "round"},
      "paint": {
        "line-width": [
          "interpolate",
          ["exponential", 1.2],
          ["zoom"],
          10,
          0.75,
          18,
          2
        ],
        "line-color": "hsl(217, 20%, 29%)",
        "line-gap-width": [
          "interpolate",
          ["exponential", 1.5],
          ["zoom"],
          10,
          0.75,
          18,
          28
        ]
      }
    },
    {
      "id": "road-primary-case-navigation",
      "type": "line",
      "metadata": {
        "mapbox:featureComponent": "road-network",
        "mapbox:group": "Road network, surface"
      },
      "source": "composite",
      "source-layer": "road",
      "minzoom": 12,
      "filter": [
        "all",
        [
          "==",
          ["get", "class"],
          "primary"
        ],
        [
          "match",
          ["get", "structure"],
          ["none", "ford"],
          true,
          false
        ],
        [
          "==",
          ["geometry-type"],
          "LineString"
        ]
      ],
      "layout": {"line-cap": "round", "line-join": "round"},
      "paint": {
        "line-width": [
          "interpolate",
          ["exponential", 1.2],
          ["zoom"],
          10,
          1,
          18,
          2
        ],
        "line-color": "hsl(217, 20%, 29%)",
        "line-gap-width": [
          "interpolate",
          ["exponential", 1.5],
          ["zoom"],
          10,
          1.125,
          18,
          32
        ]
      }
    },
    {
      "id": "road-major-link-case-navigation",
      "type": "line",
      "metadata": {
        "mapbox:featureComponent": "road-network",
        "mapbox:group": "Road network, surface"
      },
      "source": "composite",
      "source-layer": "road",
      "minzoom": 11,
      "filter": [
        "all",
        [
          "match",
          ["get", "class"],
          ["motorway_link", "trunk_link"],
          true,
          false
        ],
        [
          "match",
          ["get", "structure"],
          ["none", "ford"],
          true,
          false
        ],
        [
          "==",
          ["geometry-type"],
          "LineString"
        ]
      ],
      "layout": {
        "line-cap": [
          "step",
          ["zoom"],
          "butt",
          13,
          "round"
        ],
        "line-join": [
          "step",
          ["zoom"],
          "miter",
          13,
          "round"
        ]
      },
      "paint": {
        "line-width": [
          "interpolate",
          ["exponential", 1.2],
          ["zoom"],
          10,
          0.75,
          18,
          2
        ],
        "line-color": [
          "match",
          ["get", "class"],
          "motorway_link",
          "hsl(215, 18%, 28%)",
          "hsl(221, 13%, 28%)"
        ],
        "line-gap-width": [
          "interpolate",
          ["exponential", 1.5],
          ["zoom"],
          12,
          0.75,
          14,
          2,
          18,
          20
        ]
      }
    },
    {
      "id": "road-motorway-trunk-case-navigation",
      "type": "line",
      "metadata": {
        "mapbox:featureComponent": "road-network",
        "mapbox:group": "Road network, surface"
      },
      "source": "composite",
      "source-layer": "road",
      "minzoom": 13,
      "filter": [
        "all",
        [
          "match",
          ["get", "class"],
          ["motorway", "trunk"],
          true,
          false
        ],
        [
          "match",
          ["get", "structure"],
          ["none", "ford"],
          true,
          false
        ],
        [
          "==",
          ["geometry-type"],
          "LineString"
        ]
      ],
      "layout": {"line-cap": "round", "line-join": "round"},
      "paint": {
        "line-width": [
          "interpolate",
          ["exponential", 1.2],
          ["zoom"],
          10,
          1,
          18,
          2
        ],
        "line-color": [
          "match",
          ["get", "class"],
          "motorway",
          "hsl(215, 18%, 28%)",
          "hsl(221, 13%, 28%)"
        ],
        "line-gap-width": [
          "interpolate",
          ["exponential", 1.5],
          ["zoom"],
          5,
          1.25,
          18,
          32
        ]
      }
    },
    {
      "id": "road-construction-navigation",
      "type": "line",
      "metadata": {
        "mapbox:featureComponent": "road-network",
        "mapbox:group": "Road network, surface"
      },
      "source": "composite",
      "source-layer": "road",
      "minzoom": 14,
      "filter": [
        "all",
        [
          "==",
          ["get", "class"],
          "construction"
        ],
        [
          "match",
          ["get", "structure"],
          ["none", "ford"],
          true,
          false
        ],
        [
          "==",
          ["geometry-type"],
          "LineString"
        ]
      ],
      "layout": {},
      "paint": {
        "line-width": [
          "interpolate",
          ["exponential", 1.5],
          ["zoom"],
          14,
          2,
          18,
          20
        ],
        "line-color": "hsl(213, 14%, 19%)",
        "line-dasharray": [
          "step",
          ["zoom"],
          [
            "literal",
            [0.4, 0.8]
          ],
          15,
          [
            "literal",
            [0.3, 0.6]
          ],
          16,
          [
            "literal",
            [0.2, 0.3]
          ],
          17,
          [
            "literal",
            [0.2, 0.25]
          ],
          18,
          [
            "literal",
            [0.15, 0.15]
          ]
        ]
      }
    },
    {
      "id": "road-major-link-navigation",
      "type": "line",
      "metadata": {
        "mapbox:featureComponent": "road-network",
        "mapbox:group": "Road network, surface"
      },
      "source": "composite",
      "source-layer": "road",
      "minzoom": 11,
      "filter": [
        "all",
        [
          "match",
          ["get", "class"],
          ["motorway_link", "trunk_link"],
          true,
          false
        ],
        [
          "match",
          ["get", "structure"],
          ["none", "ford"],
          true,
          false
        ],
        [
          "==",
          ["geometry-type"],
          "LineString"
        ]
      ],
      "layout": {
        "line-cap": [
          "step",
          ["zoom"],
          "butt",
          13,
          "round"
        ],
        "line-join": [
          "step",
          ["zoom"],
          "miter",
          13,
          "round"
        ]
      },
      "paint": {
        "line-width": [
          "interpolate",
          ["exponential", 1.5],
          ["zoom"],
          12,
          0.75,
          14,
          2,
          18,
          20
        ],
        "line-color": [
          "match",
          ["get", "class"],
          "motorway_link",
          "hsl(215, 28%, 48%)",
          "hsl(221, 20%, 44%)"
        ]
      }
    },
    {
      "id": "road-minor-navigation",
      "type": "line",
      "metadata": {
        "mapbox:featureComponent": "road-network",
        "mapbox:group": "Road network, surface"
      },
      "source": "composite",
      "source-layer": "road",
      "minzoom": 15,
      "filter": [
        "all",
        [
          "match",
          ["get", "class"],
          ["track", "secondary_link", "tertiary_link", "service"],
          true,
          false
        ],
        [
          "match",
          ["get", "structure"],
          ["none", "ford"],
          true,
          false
        ],
        [
          "==",
          ["geometry-type"],
          "LineString"
        ]
      ],
      "layout": {"line-join": "round", "line-cap": "round"},
      "paint": {
        "line-width": [
          "interpolate",
          ["exponential", 1.5],
          ["zoom"],
          15,
          [
            "match",
            ["get", "class"],
            "track",
            1,
            0.5
          ],
          18,
          10
        ],
        "line-color": "hsl(213, 14%, 19%)"
      }
    },
    {
      "id": "road-street-navigation",
      "type": "line",
      "metadata": {
        "mapbox:featureComponent": "road-network",
        "mapbox:group": "Road network, surface"
      },
      "source": "composite",
      "source-layer": "road",
      "minzoom": 14,
      "filter": [
        "all",
        [
          "match",
          ["get", "class"],
          ["street", "street_limited", "primary_link"],
          true,
          false
        ],
        [
          "match",
          ["get", "structure"],
          ["none", "ford"],
          true,
          false
        ],
        [
          "==",
          ["geometry-type"],
          "LineString"
        ]
      ],
      "layout": {"line-cap": "round", "line-join": "round"},
      "paint": {
        "line-width": [
          "interpolate",
          ["exponential", 1.5],
          ["zoom"],
          12,
          0.5,
          14,
          2,
          18,
          20
        ],
        "line-color": "hsl(213, 14%, 19%)"
      }
    },
    {
      "id": "road-secondary-tertiary-navigation",
      "type": "line",
      "metadata": {
        "mapbox:featureComponent": "road-network",
        "mapbox:group": "Road network, surface"
      },
      "source": "composite",
      "source-layer": "road",
      "minzoom": 8,
      "filter": [
        "all",
        [
          "match",
          ["get", "class"],
          ["secondary", "tertiary"],
          true,
          false
        ],
        [
          "match",
          ["get", "structure"],
          ["none", "ford"],
          true,
          false
        ],
        [
          "==",
          ["geometry-type"],
          "LineString"
        ]
      ],
      "layout": {
        "line-cap": [
          "step",
          ["zoom"],
          "butt",
          11,
          "round"
        ],
        "line-join": [
          "step",
          ["zoom"],
          "miter",
          11,
          "round"
        ]
      },
      "paint": {
        "line-width": [
          "interpolate",
          ["exponential", 1.5],
          ["zoom"],
          5,
          0.175,
          10,
          0.75,
          18,
          28
        ],
        "line-color": "hsl(213, 14%, 19%)"
      }
    },
    {
      "id": "road-primary-navigation",
      "type": "line",
      "metadata": {
        "mapbox:featureComponent": "road-network",
        "mapbox:group": "Road network, surface"
      },
      "source": "composite",
      "source-layer": "road",
      "minzoom": 6,
      "filter": [
        "all",
        [
          "==",
          ["get", "class"],
          "primary"
        ],
        [
          "match",
          ["get", "structure"],
          ["none", "ford"],
          true,
          false
        ],
        [
          "==",
          ["geometry-type"],
          "LineString"
        ]
      ],
      "layout": {
        "line-cap": [
          "step",
          ["zoom"],
          "butt",
          11,
          "round"
        ],
        "line-join": [
          "step",
          ["zoom"],
          "miter",
          11,
          "round"
        ]
      },
      "paint": {
        "line-width": [
          "interpolate",
          ["exponential", 1.5],
          ["zoom"],
          10,
          1.125,
          18,
          32
        ],
        "line-color": "hsl(213, 14%, 19%)"
      }
    },
    {
      "id": "road-motorway-trunk-case-low-navigation",
      "type": "line",
      "metadata": {
        "mapbox:featureComponent": "road-network",
        "mapbox:group": "Road network, surface"
      },
      "source": "composite",
      "source-layer": "road",
      "minzoom": 5,
      "maxzoom": 13,
      "filter": [
        "all",
        [
          "step",
          ["zoom"],
          [
            "==",
            ["get", "class"],
            "motorway"
          ],
          6,
          [
            "match",
            ["get", "class"],
            ["motorway", "trunk"],
            true,
            false
          ]
        ],
        [
          "match",
          ["get", "structure"],
          ["none", "ford"],
          true,
          false
        ],
        [
          "==",
          ["geometry-type"],
          "LineString"
        ]
      ],
      "layout": {"line-cap": "round", "line-join": "round"},
      "paint": {
        "line-width": [
          "interpolate",
          ["exponential", 1.2],
          ["zoom"],
          10,
          1,
          18,
          2
        ],
        "line-color": [
          "match",
          ["get", "class"],
          "motorway",
          "hsl(215, 18%, 28%)",
          "hsl(221, 13%, 28%)"
        ],
        "line-gap-width": [
          "interpolate",
          ["exponential", 1.5],
          ["zoom"],
          5,
          1.25,
          18,
          32
        ]
      }
    },
    {
      "id": "road-oneway-arrow-blue-navigation",
      "type": "symbol",
      "metadata": {
        "mapbox:featureComponent": "road-network",
        "mapbox:group": "Road network, surface"
      },
      "source": "composite",
      "source-layer": "road",
      "minzoom": 15,
      "filter": [
        "all",
        [
          "==",
          ["get", "oneway"],
          "true"
        ],
        [
          "step",
          ["zoom"],
          [
            "match",
            ["get", "class"],
            ["primary", "secondary", "tertiary", "street", "street_limited"],
            true,
            false
          ],
          16,
          [
            "match",
            ["get", "class"],
            [
              "primary",
              "secondary",
              "tertiary",
              "street",
              "street_limited",
              "primary_link",
              "secondary_link",
              "tertiary_link",
              "service",
              "track"
            ],
            true,
            false
          ]
        ],
        [
          "match",
          ["get", "structure"],
          ["none", "ford"],
          true,
          false
        ]
      ],
      "layout": {
        "symbol-placement": "line",
        "symbol-spacing": [
          "interpolate",
          ["linear"],
          ["zoom"],
          15,
          400,
          18,
          600,
          22,
          1200
        ],
        "icon-image": "oneway-small",
        "icon-size": [
          "interpolate",
          ["exponential", 1.5],
          ["zoom"],
          15,
          0.25,
          20,
          0.8
        ],
        "icon-rotation-alignment": "map"
      },
      "paint": {}
    },
    {
      "id": "road-motorway-trunk-navigation",
      "type": "line",
      "metadata": {
        "mapbox:featureComponent": "road-network",
        "mapbox:group": "Road network, surface"
      },
      "source": "composite",
      "source-layer": "road",
      "minzoom": 5,
      "filter": [
        "all",
        [
          "match",
          ["get", "class"],
          ["motorway", "trunk"],
          true,
          false
        ],
        [
          "match",
          ["get", "structure"],
          ["none", "ford"],
          true,
          false
        ],
        [
          "==",
          ["geometry-type"],
          "LineString"
        ]
      ],
      "layout": {
        "line-cap": [
          "step",
          ["zoom"],
          "butt",
          8,
          "round"
        ],
        "line-join": [
          "step",
          ["zoom"],
          "miter",
          8,
          "round"
        ]
      },
      "paint": {
        "line-width": [
          "interpolate",
          ["exponential", 1.5],
          ["zoom"],
          5,
          1.25,
          18,
          32
        ],
        "line-color": [
          "step",
          ["zoom"],
          [
            "match",
            ["get", "class"],
            "motorway",
            "hsl(215, 28%, 48%)",
            "hsl(213, 14%, 19%)"
          ],
          6,
          [
            "match",
            ["get", "class"],
            "motorway",
            "hsl(215, 28%, 48%)",
            "hsl(221, 20%, 44%)"
          ]
        ]
      }
    },
    {
      "id": "road-rail",
      "type": "line",
      "metadata": {
        "mapbox:featureComponent": "transit",
        "mapbox:group": "Transit, surface"
      },
      "source": "composite",
      "source-layer": "road",
      "minzoom": 13,
      "filter": [
        "all",
        [
          "match",
          ["get", "class"],
          ["major_rail", "minor_rail"],
          true,
          false
        ],
        [
          "match",
          ["get", "structure"],
          ["none", "ford"],
          true,
          false
        ]
      ],
      "layout": {"line-join": "round"},
      "paint": {
        "line-color": [
          "interpolate",
          ["linear"],
          ["zoom"],
          13,
          "hsl(229, 46%, 22%)",
          16,
          "hsl(217, 4%, 44%)"
        ],
        "line-width": [
          "interpolate",
          ["exponential", 1.5],
          ["zoom"],
          14,
          0.5,
          20,
          1
        ]
      }
    },
    {
      "id": "road-rail-tracks",
      "type": "line",
      "metadata": {
        "mapbox:featureComponent": "transit",
        "mapbox:group": "Transit, surface"
      },
      "source": "composite",
      "source-layer": "road",
      "minzoom": 13,
      "filter": [
        "all",
        [
          "match",
          ["get", "class"],
          ["major_rail", "minor_rail"],
          true,
          false
        ],
        [
          "match",
          ["get", "structure"],
          ["none", "ford"],
          true,
          false
        ]
      ],
      "layout": {"line-join": "round"},
      "paint": {
        "line-color": [
          "interpolate",
          ["linear"],
          ["zoom"],
          13,
          "hsl(229, 46%, 22%)",
          16,
          "hsl(217, 4%, 44%)"
        ],
        "line-width": [
          "interpolate",
          ["exponential", 1.5],
          ["zoom"],
          14,
          4,
          20,
          8
        ],
        "line-dasharray": [0.1, 15],
        "line-opacity": [
          "interpolate",
          ["linear"],
          ["zoom"],
          13.75,
          0,
          14,
          1
        ]
      }
    },
    {
      "id": "level-crossing-navigation",
      "type": "symbol",
      "metadata": {
        "mapbox:featureComponent": "road-network",
        "mapbox:group": "Road network, surface-icons"
      },
      "source": "composite",
      "source-layer": "road",
      "minzoom": 16,
      "filter": [
        "==",
        ["get", "class"],
        "level_crossing"
      ],
      "layout": {
        "icon-image": "level-crossing",
        "icon-size": [
          "interpolate",
          ["exponential", 1.5],
          ["zoom"],
          16,
          0.25,
          22,
          1
        ],
        "icon-allow-overlap": true
      },
      "paint": {}
    },
    {
      "id": "road-oneway-arrow-white-navigation",
      "type": "symbol",
      "metadata": {
        "mapbox:featureComponent": "road-network",
        "mapbox:group": "Road network, surface-icons"
      },
      "source": "composite",
      "source-layer": "road",
      "minzoom": 15,
      "filter": [
        "all",
        [
          "==",
          ["get", "oneway"],
          "true"
        ],
        [
          "match",
          ["get", "class"],
          ["motorway", "trunk", "motorway_link", "trunk_link"],
          true,
          false
        ],
        [
          "match",
          ["get", "structure"],
          ["none", "ford"],
          true,
          false
        ]
      ],
      "layout": {
        "symbol-placement": "line",
        "symbol-spacing": [
          "interpolate",
          ["linear"],
          ["zoom"],
          15,
          400,
          18,
          600,
          22,
          1200
        ],
        "icon-image": [
          "step",
          ["zoom"],
          "oneway-white-small",
          18,
          "oneway-white-large"
        ],
        "icon-size": [
          "interpolate",
          ["exponential", 1.5],
          ["zoom"],
          15,
          0.4,
          20,
          0.6
        ]
      },
      "paint": {}
    },
    {
      "id": "turning-feature-navigation",
      "type": "circle",
      "metadata": {
        "mapbox:featureComponent": "road-network",
        "mapbox:group": "Road network, surface-icons"
      },
      "source": "composite",
      "source-layer": "road",
      "minzoom": 15,
      "filter": [
        "all",
        [
          "==",
          ["geometry-type"],
          "Point"
        ],
        [
          "match",
          ["get", "class"],
          ["turning_circle", "turning_loop"],
          true,
          false
        ]
      ],
      "layout": {},
      "paint": {
        "circle-radius": [
          "interpolate",
          ["linear"],
          ["zoom"],
          15,
          3.2,
          16,
          6,
          18,
          17
        ],
        "circle-color": "hsl(213, 14%, 19%)"
      }
    },
    {
      "id": "bridge-minor-case-navigation",
      "type": "line",
      "metadata": {
        "mapbox:featureComponent": "road-network",
        "mapbox:group": "Road network, bridges"
      },
      "source": "composite",
      "source-layer": "road",
      "minzoom": 15,
      "filter": [
        "all",
        [
          "==",
          ["get", "structure"],
          "bridge"
        ],
        [
          "match",
          ["get", "class"],
          ["track", "secondary_link", "tertiary_link", "service"],
          true,
          false
        ],
        [
          "==",
          ["geometry-type"],
          "LineString"
        ]
      ],
      "layout": {"line-join": "round"},
      "paint": {
        "line-width": [
          "interpolate",
          ["exponential", 1.2],
          ["zoom"],
          15,
          0.75,
          18,
          1.5
        ],
        "line-color": "hsl(217, 20%, 29%)",
        "line-gap-width": [
          "interpolate",
          ["exponential", 1.5],
          ["zoom"],
          15,
          [
            "match",
            ["get", "class"],
            "track",
            1,
            0.5
          ],
          18,
          10
        ]
      }
    },
    {
      "id": "bridge-street-low-navigation",
      "type": "line",
      "metadata": {
        "mapbox:featureComponent": "road-network",
        "mapbox:group": "Road network, bridges"
      },
      "source": "composite",
      "source-layer": "road",
      "minzoom": 13,
      "maxzoom": 14,
      "filter": [
        "all",
        [
          "==",
          ["get", "structure"],
          "bridge"
        ],
        [
          "match",
          ["get", "class"],
          ["street", "street_limited", "primary_link"],
          true,
          false
        ],
        [
          "==",
          ["geometry-type"],
          "LineString"
        ]
      ],
      "layout": {},
      "paint": {
        "line-width": [
          "interpolate",
          ["exponential", 1.5],
          ["zoom"],
          12,
          0.5,
          14,
          2
        ],
        "line-color": "hsl(213, 14%, 19%)"
      }
    },
    {
      "id": "bridge-street-case-navigation",
      "type": "line",
      "metadata": {
        "mapbox:featureComponent": "road-network",
        "mapbox:group": "Road network, bridges"
      },
      "source": "composite",
      "source-layer": "road",
      "minzoom": 14,
      "filter": [
        "all",
        [
          "==",
          ["get", "structure"],
          "bridge"
        ],
        [
          "match",
          ["get", "class"],
          ["street", "street_limited", "primary_link"],
          true,
          false
        ],
        [
          "==",
          ["geometry-type"],
          "LineString"
        ]
      ],
      "layout": {"line-join": "round"},
      "paint": {
        "line-width": [
          "interpolate",
          ["exponential", 1.2],
          ["zoom"],
          10,
          0.5,
          18,
          2
        ],
        "line-color": "hsl(217, 20%, 29%)",
        "line-gap-width": [
          "interpolate",
          ["exponential", 1.5],
          ["zoom"],
          14,
          2,
          18,
          20
        ]
      }
    },
    {
      "id": "bridge-secondary-tertiary-case-navigation",
      "type": "line",
      "metadata": {
        "mapbox:featureComponent": "road-network",
        "mapbox:group": "Road network, bridges"
      },
      "source": "composite",
      "source-layer": "road",
      "minzoom": 12,
      "filter": [
        "all",
        [
          "==",
          ["get", "structure"],
          "bridge"
        ],
        [
          "match",
          ["get", "class"],
          ["secondary", "tertiary"],
          true,
          false
        ],
        [
          "==",
          ["geometry-type"],
          "LineString"
        ]
      ],
      "layout": {"line-join": "round"},
      "paint": {
        "line-width": [
          "interpolate",
          ["exponential", 1.2],
          ["zoom"],
          10,
          0.75,
          18,
          2
        ],
        "line-color": "hsl(217, 20%, 29%)",
        "line-gap-width": [
          "interpolate",
          ["exponential", 1.5],
          ["zoom"],
          10,
          0.75,
          18,
          28
        ]
      }
    },
    {
      "id": "bridge-primary-case-navigation",
      "type": "line",
      "metadata": {
        "mapbox:featureComponent": "road-network",
        "mapbox:group": "Road network, bridges"
      },
      "source": "composite",
      "source-layer": "road",
      "minzoom": 12,
      "filter": [
        "all",
        [
          "==",
          ["get", "structure"],
          "bridge"
        ],
        [
          "==",
          ["get", "class"],
          "primary"
        ],
        [
          "==",
          ["geometry-type"],
          "LineString"
        ]
      ],
      "layout": {"line-join": "round"},
      "paint": {
        "line-width": [
          "interpolate",
          ["exponential", 1.2],
          ["zoom"],
          10,
          1,
          18,
          2
        ],
        "line-color": "hsl(217, 20%, 29%)",
        "line-gap-width": [
          "interpolate",
          ["exponential", 1.5],
          ["zoom"],
          10,
          1.125,
          18,
          32
        ]
      }
    },
    {
      "id": "bridge-major-link-case-navigation",
      "type": "line",
      "metadata": {
        "mapbox:featureComponent": "road-network",
        "mapbox:group": "Road network, bridges"
      },
      "source": "composite",
      "source-layer": "road",
      "minzoom": 13,
      "filter": [
        "all",
        [
          "==",
          ["get", "structure"],
          "bridge"
        ],
        [
          "match",
          ["get", "class"],
          ["motorway_link", "trunk_link"],
          true,
          false
        ],
        [
          "<=",
          ["get", "layer"],
          1
        ],
        [
          "==",
          ["geometry-type"],
          "LineString"
        ]
      ],
      "layout": {"line-join": "round"},
      "paint": {
        "line-width": [
          "interpolate",
          ["exponential", 1.2],
          ["zoom"],
          10,
          0.75,
          18,
          2
        ],
        "line-color": [
          "match",
          ["get", "class"],
          "motorway_link",
          "hsl(215, 18%, 28%)",
          "hsl(221, 13%, 28%)"
        ],
        "line-gap-width": [
          "interpolate",
          ["exponential", 1.5],
          ["zoom"],
          12,
          0.75,
          14,
          2,
          18,
          20
        ]
      }
    },
    {
      "id": "bridge-motorway-trunk-case-navigation",
      "type": "line",
      "metadata": {
        "mapbox:featureComponent": "road-network",
        "mapbox:group": "Road network, bridges"
      },
      "source": "composite",
      "source-layer": "road",
      "minzoom": 13,
      "filter": [
        "all",
        [
          "==",
          ["get", "structure"],
          "bridge"
        ],
        [
          "match",
          ["get", "class"],
          ["motorway", "trunk"],
          true,
          false
        ],
        [
          "<=",
          ["get", "layer"],
          1
        ],
        [
          "==",
          ["geometry-type"],
          "LineString"
        ]
      ],
      "layout": {"line-join": "round"},
      "paint": {
        "line-width": [
          "interpolate",
          ["exponential", 1.2],
          ["zoom"],
          10,
          1,
          18,
          2
        ],
        "line-color": [
          "match",
          ["get", "class"],
          "motorway",
          "hsl(215, 18%, 28%)",
          "hsl(221, 13%, 28%)"
        ],
        "line-gap-width": [
          "interpolate",
          ["exponential", 1.5],
          ["zoom"],
          5,
          1.25,
          18,
          32
        ]
      }
    },
    {
      "id": "bridge-construction-navigation",
      "type": "line",
      "metadata": {
        "mapbox:featureComponent": "road-network",
        "mapbox:group": "Road network, bridges"
      },
      "source": "composite",
      "source-layer": "road",
      "minzoom": 14,
      "filter": [
        "all",
        [
          "==",
          ["get", "structure"],
          "bridge"
        ],
        [
          "==",
          ["get", "class"],
          "construction"
        ],
        [
          "==",
          ["geometry-type"],
          "LineString"
        ]
      ],
      "layout": {},
      "paint": {
        "line-width": [
          "interpolate",
          ["exponential", 1.5],
          ["zoom"],
          14,
          2,
          18,
          20
        ],
        "line-color": "hsl(217, 20%, 29%)",
        "line-dasharray": [
          "step",
          ["zoom"],
          [
            "literal",
            [0.4, 0.8]
          ],
          15,
          [
            "literal",
            [0.3, 0.6]
          ],
          16,
          [
            "literal",
            [0.2, 0.3]
          ],
          17,
          [
            "literal",
            [0.2, 0.25]
          ],
          18,
          [
            "literal",
            [0.15, 0.15]
          ]
        ]
      }
    },
    {
      "id": "bridge-major-link-navigation",
      "type": "line",
      "metadata": {
        "mapbox:featureComponent": "road-network",
        "mapbox:group": "Road network, bridges"
      },
      "source": "composite",
      "source-layer": "road",
      "minzoom": 13,
      "filter": [
        "all",
        [
          "==",
          ["get", "structure"],
          "bridge"
        ],
        [
          "match",
          ["get", "class"],
          ["motorway_link", "trunk_link"],
          true,
          false
        ],
        [
          "<=",
          ["get", "layer"],
          1
        ],
        [
          "==",
          ["geometry-type"],
          "LineString"
        ]
      ],
      "layout": {"line-cap": "round", "line-join": "round"},
      "paint": {
        "line-width": [
          "interpolate",
          ["exponential", 1.5],
          ["zoom"],
          12,
          0.75,
          14,
          2,
          18,
          20
        ],
        "line-color": [
          "match",
          ["get", "class"],
          "motorway_link",
          "hsl(215, 28%, 48%)",
          "hsl(221, 20%, 44%)"
        ]
      }
    },
    {
      "id": "bridge-minor-navigation",
      "type": "line",
      "metadata": {
        "mapbox:featureComponent": "road-network",
        "mapbox:group": "Road network, bridges"
      },
      "source": "composite",
      "source-layer": "road",
      "minzoom": 15,
      "filter": [
        "all",
        [
          "==",
          ["get", "structure"],
          "bridge"
        ],
        [
          "match",
          ["get", "class"],
          ["track", "secondary_link", "tertiary_link", "service"],
          true,
          false
        ],
        [
          "==",
          ["geometry-type"],
          "LineString"
        ]
      ],
      "layout": {"line-cap": "round", "line-join": "round"},
      "paint": {
        "line-width": [
          "interpolate",
          ["exponential", 1.5],
          ["zoom"],
          15,
          [
            "match",
            ["get", "class"],
            "track",
            1,
            0.5
          ],
          18,
          10
        ],
        "line-color": "hsl(213, 14%, 19%)"
      }
    },
    {
      "id": "bridge-street-navigation",
      "type": "line",
      "metadata": {
        "mapbox:featureComponent": "road-network",
        "mapbox:group": "Road network, bridges"
      },
      "source": "composite",
      "source-layer": "road",
      "minzoom": 14,
      "filter": [
        "all",
        [
          "==",
          ["get", "structure"],
          "bridge"
        ],
        [
          "match",
          ["get", "class"],
          ["street", "street_limited", "primary_link"],
          true,
          false
        ],
        [
          "==",
          ["geometry-type"],
          "LineString"
        ]
      ],
      "layout": {"line-cap": "round", "line-join": "round"},
      "paint": {
        "line-width": [
          "interpolate",
          ["exponential", 1.5],
          ["zoom"],
          12,
          0.5,
          14,
          2,
          18,
          20
        ],
        "line-color": "hsl(213, 14%, 19%)"
      }
    },
    {
      "id": "bridge-secondary-tertiary-navigation",
      "type": "line",
      "metadata": {
        "mapbox:featureComponent": "road-network",
        "mapbox:group": "Road network, bridges"
      },
      "source": "composite",
      "source-layer": "road",
      "minzoom": 13,
      "filter": [
        "all",
        [
          "==",
          ["get", "structure"],
          "bridge"
        ],
        [
          "match",
          ["get", "class"],
          ["secondary", "tertiary"],
          true,
          false
        ],
        [
          "==",
          ["geometry-type"],
          "LineString"
        ]
      ],
      "layout": {
        "line-cap": [
          "step",
          ["zoom"],
          "butt",
          11,
          "round"
        ],
        "line-join": [
          "step",
          ["zoom"],
          "miter",
          11,
          "round"
        ]
      },
      "paint": {
        "line-width": [
          "interpolate",
          ["exponential", 1.5],
          ["zoom"],
          10,
          0.75,
          18,
          28
        ],
        "line-color": "hsl(213, 14%, 19%)"
      }
    },
    {
      "id": "bridge-primary-navigation",
      "type": "line",
      "metadata": {
        "mapbox:featureComponent": "road-network",
        "mapbox:group": "Road network, bridges"
      },
      "source": "composite",
      "source-layer": "road",
      "minzoom": 13,
      "filter": [
        "all",
        [
          "==",
          ["get", "structure"],
          "bridge"
        ],
        [
          "==",
          ["get", "class"],
          "primary"
        ],
        [
          "==",
          ["geometry-type"],
          "LineString"
        ]
      ],
      "layout": {"line-cap": "round", "line-join": "round"},
      "paint": {
        "line-width": [
          "interpolate",
          ["exponential", 1.5],
          ["zoom"],
          10,
          1.125,
          18,
          32
        ],
        "line-color": "hsl(213, 14%, 19%)"
      }
    },
    {
      "id": "bridge-oneway-arrow-blue-navigation",
      "type": "symbol",
      "metadata": {
        "mapbox:featureComponent": "road-network",
        "mapbox:group": "Road network, bridges"
      },
      "source": "composite",
      "source-layer": "road",
      "minzoom": 15,
      "filter": [
        "all",
        [
          "==",
          ["get", "structure"],
          "bridge"
        ],
        [
          "==",
          ["get", "oneway"],
          "true"
        ],
        [
          "step",
          ["zoom"],
          [
            "match",
            ["get", "class"],
            ["primary", "secondary", "tertiary", "street", "street_limited"],
            true,
            false
          ],
          16,
          [
            "match",
            ["get", "class"],
            [
              "primary",
              "secondary",
              "tertiary",
              "street",
              "street_limited",
              "primary_link",
              "secondary_link",
              "tertiary_link",
              "service",
              "track"
            ],
            true,
            false
          ]
        ]
      ],
      "layout": {
        "symbol-placement": "line",
        "symbol-spacing": [
          "interpolate",
          ["linear"],
          ["zoom"],
          15,
          400,
          18,
          600,
          22,
          1200
        ],
        "icon-image": "oneway-small",
        "icon-size": [
          "interpolate",
          ["exponential", 1.5],
          ["zoom"],
          15,
          0.25,
          20,
          0.5
        ],
        "icon-rotation-alignment": "map"
      },
      "paint": {}
    },
    {
      "id": "bridge-motorway-trunk-navigation",
      "type": "line",
      "metadata": {
        "mapbox:featureComponent": "road-network",
        "mapbox:group": "Road network, bridges"
      },
      "source": "composite",
      "source-layer": "road",
      "minzoom": 13,
      "filter": [
        "all",
        [
          "==",
          ["get", "structure"],
          "bridge"
        ],
        [
          "match",
          ["get", "class"],
          ["motorway", "trunk"],
          true,
          false
        ],
        [
          "<=",
          ["get", "layer"],
          1
        ],
        [
          "==",
          ["geometry-type"],
          "LineString"
        ]
      ],
      "layout": {"line-cap": "round", "line-join": "round"},
      "paint": {
        "line-width": [
          "interpolate",
          ["exponential", 1.5],
          ["zoom"],
          5,
          1.25,
          18,
          32
        ],
        "line-color": [
          "match",
          ["get", "class"],
          "motorway",
          "hsl(215, 28%, 48%)",
          "hsl(221, 20%, 44%)"
        ]
      }
    },
    {
      "id": "bridge-major-link-2-case-navigation",
      "type": "line",
      "metadata": {
        "mapbox:featureComponent": "road-network",
        "mapbox:group": "Road network, bridges"
      },
      "source": "composite",
      "source-layer": "road",
      "minzoom": 13,
      "filter": [
        "all",
        [
          "==",
          ["get", "structure"],
          "bridge"
        ],
        [
          ">=",
          ["get", "layer"],
          2
        ],
        [
          "match",
          ["get", "class"],
          ["motorway_link", "trunk_link"],
          true,
          false
        ],
        [
          "==",
          ["geometry-type"],
          "LineString"
        ]
      ],
      "layout": {"line-join": "round"},
      "paint": {
        "line-width": [
          "interpolate",
          ["exponential", 1.2],
          ["zoom"],
          10,
          0.75,
          18,
          2
        ],
        "line-color": [
          "match",
          ["get", "class"],
          "motorway_link",
          "hsl(215, 18%, 28%)",
          "hsl(221, 13%, 28%)"
        ],
        "line-gap-width": [
          "interpolate",
          ["exponential", 1.5],
          ["zoom"],
          12,
          0.75,
          14,
          2,
          18,
          20
        ]
      }
    },
    {
      "id": "bridge-motorway-trunk-2-case-navigation",
      "type": "line",
      "metadata": {
        "mapbox:featureComponent": "road-network",
        "mapbox:group": "Road network, bridges"
      },
      "source": "composite",
      "source-layer": "road",
      "minzoom": 13,
      "filter": [
        "all",
        [
          "==",
          ["get", "structure"],
          "bridge"
        ],
        [
          ">=",
          ["get", "layer"],
          2
        ],
        [
          "match",
          ["get", "class"],
          ["motorway", "trunk"],
          true,
          false
        ],
        [
          "==",
          ["geometry-type"],
          "LineString"
        ]
      ],
      "layout": {"line-join": "round"},
      "paint": {
        "line-width": [
          "interpolate",
          ["exponential", 1.2],
          ["zoom"],
          10,
          1,
          18,
          2
        ],
        "line-color": [
          "match",
          ["get", "class"],
          "motorway",
          "hsl(215, 18%, 28%)",
          "hsl(221, 13%, 28%)"
        ],
        "line-gap-width": [
          "interpolate",
          ["exponential", 1.5],
          ["zoom"],
          5,
          1.25,
          18,
          32
        ]
      }
    },
    {
      "id": "bridge-major-link-2-navigation",
      "type": "line",
      "metadata": {
        "mapbox:featureComponent": "road-network",
        "mapbox:group": "Road network, bridges"
      },
      "source": "composite",
      "source-layer": "road",
      "minzoom": 13,
      "filter": [
        "all",
        [
          "==",
          ["get", "structure"],
          "bridge"
        ],
        [
          ">=",
          ["get", "layer"],
          2
        ],
        [
          "match",
          ["get", "class"],
          ["motorway_link", "trunk_link"],
          true,
          false
        ],
        [
          "==",
          ["geometry-type"],
          "LineString"
        ]
      ],
      "layout": {"line-cap": "round", "line-join": "round"},
      "paint": {
        "line-width": [
          "interpolate",
          ["exponential", 1.5],
          ["zoom"],
          12,
          0.75,
          14,
          2,
          18,
          20
        ],
        "line-color": [
          "match",
          ["get", "class"],
          "motorway_link",
          "hsl(215, 28%, 48%)",
          "hsl(221, 20%, 44%)"
        ]
      }
    },
    {
      "id": "bridge-motorway-trunk-2-navigation",
      "type": "line",
      "metadata": {
        "mapbox:featureComponent": "road-network",
        "mapbox:group": "Road network, bridges"
      },
      "source": "composite",
      "source-layer": "road",
      "minzoom": 13,
      "filter": [
        "all",
        [
          "==",
          ["get", "structure"],
          "bridge"
        ],
        [
          ">=",
          ["get", "layer"],
          2
        ],
        [
          "match",
          ["get", "class"],
          ["motorway", "trunk"],
          true,
          false
        ],
        [
          "==",
          ["geometry-type"],
          "LineString"
        ]
      ],
      "layout": {"line-cap": "round", "line-join": "round"},
      "paint": {
        "line-width": [
          "interpolate",
          ["exponential", 1.5],
          ["zoom"],
          5,
          1.25,
          18,
          32
        ],
        "line-color": [
          "match",
          ["get", "class"],
          "motorway",
          "hsl(215, 28%, 48%)",
          "hsl(221, 20%, 44%)"
        ]
      }
    },
    {
      "id": "bridge-oneway-arrow-white-navigation",
      "type": "symbol",
      "metadata": {
        "mapbox:featureComponent": "road-network",
        "mapbox:group": "Road network, bridges"
      },
      "source": "composite",
      "source-layer": "road",
      "minzoom": 15,
      "filter": [
        "all",
        [
          "==",
          ["get", "structure"],
          "bridge"
        ],
        [
          "match",
          ["get", "class"],
          ["motorway", "trunk", "motorway_link", "trunk_link"],
          true,
          false
        ],
        [
          "==",
          ["get", "oneway"],
          "true"
        ]
      ],
      "layout": {
        "symbol-placement": "line",
        "symbol-spacing": [
          "interpolate",
          ["linear"],
          ["zoom"],
          15,
          400,
          18,
          600,
          22,
          1200
        ],
        "icon-image": [
          "step",
          ["zoom"],
          "oneway-white-small",
          18,
          "oneway-white-large"
        ],
        "icon-size": [
          "interpolate",
          ["exponential", 1.5],
          ["zoom"],
          15,
          0.45,
          20,
          0.6
        ]
      },
      "paint": {}
    },
    {
      "id": "bridge-rail",
      "type": "line",
      "metadata": {
        "mapbox:featureComponent": "transit",
        "mapbox:group": "Transit, bridges"
      },
      "source": "composite",
      "source-layer": "road",
      "minzoom": 13,
      "filter": [
        "all",
        [
          "==",
          ["get", "structure"],
          "bridge"
        ],
        [
          "match",
          ["get", "class"],
          ["major_rail", "minor_rail"],
          true,
          false
        ]
      ],
      "layout": {"line-join": "round"},
      "paint": {
        "line-color": [
          "interpolate",
          ["linear"],
          ["zoom"],
          13,
          "hsl(229, 46%, 22%)",
          16,
          "hsl(217, 4%, 44%)"
        ],
        "line-width": [
          "interpolate",
          ["exponential", 1.5],
          ["zoom"],
          14,
          0.5,
          20,
          1
        ]
      }
    },
    {
      "id": "bridge-rail-tracks",
      "type": "line",
      "metadata": {
        "mapbox:featureComponent": "transit",
        "mapbox:group": "Transit, bridges"
      },
      "source": "composite",
      "source-layer": "road",
      "minzoom": 13,
      "filter": [
        "all",
        [
          "==",
          ["get", "structure"],
          "bridge"
        ],
        [
          "match",
          ["get", "class"],
          ["major_rail", "minor_rail"],
          true,
          false
        ]
      ],
      "layout": {"line-join": "round"},
      "paint": {
        "line-color": [
          "interpolate",
          ["linear"],
          ["zoom"],
          13,
          "hsl(229, 46%, 22%)",
          16,
          "hsl(217, 4%, 44%)"
        ],
        "line-width": [
          "interpolate",
          ["exponential", 1.5],
          ["zoom"],
          14,
          4,
          20,
          8
        ],
        "line-dasharray": [0.1, 15],
        "line-opacity": [
          "interpolate",
          ["linear"],
          ["zoom"],
          13.75,
          0,
          14,
          1
        ]
      }
    },
    {
      "id": "aerialway",
      "type": "line",
      "metadata": {
        "mapbox:featureComponent": "transit",
        "mapbox:group": "Transit, elevated"
      },
      "source": "composite",
      "source-layer": "road",
      "minzoom": 12,
      "filter": [
        "==",
        ["get", "class"],
        "aerialway"
      ],
      "layout": {"line-join": "round"},
      "paint": {
        "line-color": "hsl(217, 4%, 44%)",
        "line-width": [
          "interpolate",
          ["exponential", 1.5],
          ["zoom"],
          14,
          0.5,
          20,
          1
        ]
      }
    },
    {
      "id": "admin-1-boundary-bg",
      "type": "line",
      "metadata": {
        "mapbox:featureComponent": "admin-boundaries",
        "mapbox:group": "Administrative boundaries, admin"
      },
      "source": "composite",
      "source-layer": "admin",
      "minzoom": 7,
      "filter": [
        "all",
        [
          "==",
          ["get", "admin_level"],
          1
        ],
        [
          "==",
          ["get", "maritime"],
          "false"
        ],
        [
          "match",
          ["get", "worldview"],
          ["all", "US"],
          true,
          false
        ]
      ],
      "layout": {"line-join": "bevel"},
      "paint": {
        "line-color": [
          "interpolate",
          ["linear"],
          ["zoom"],
          8,
          "hsl(214, 39%, 27%)",
          16,
          "hsl(250, 30%, 42%)"
        ],
        "line-width": [
          "interpolate",
          ["linear"],
          ["zoom"],
          7,
          3.75,
          12,
          5.5
        ],
        "line-opacity": [
          "interpolate",
          ["linear"],
          ["zoom"],
          7,
          0,
          8,
          0.75
        ],
        "line-dasharray": [1, 0],
        "line-blur": [
          "interpolate",
          ["linear"],
          ["zoom"],
          3,
          0,
          8,
          3
        ]
      }
    },
    {
      "id": "admin-0-boundary-bg",
      "type": "line",
      "metadata": {
        "mapbox:featureComponent": "admin-boundaries",
        "mapbox:group": "Administrative boundaries, admin"
      },
      "source": "composite",
      "source-layer": "admin",
      "minzoom": 1,
      "filter": [
        "all",
        [
          "==",
          ["get", "admin_level"],
          0
        ],
        [
          "==",
          ["get", "maritime"],
          "false"
        ],
        [
          "match",
          ["get", "worldview"],
          ["all", "US"],
          true,
          false
        ]
      ],
      "layout": {},
      "paint": {
        "line-width": [
          "interpolate",
          ["linear"],
          ["zoom"],
          3,
          3.5,
          10,
          8
        ],
        "line-color": [
          "interpolate",
          ["linear"],
          ["zoom"],
          6,
          "hsl(214, 39%, 27%)",
          8,
          "hsl(250, 30%, 42%)"
        ],
        "line-opacity": [
          "interpolate",
          ["linear"],
          ["zoom"],
          3,
          0,
          4,
          0.5
        ],
        "line-blur": [
          "interpolate",
          ["linear"],
          ["zoom"],
          3,
          0,
          10,
          2
        ]
      }
    },
    {
      "id": "admin-1-boundary",
      "type": "line",
      "metadata": {
        "mapbox:featureComponent": "admin-boundaries",
        "mapbox:group": "Administrative boundaries, admin"
      },
      "source": "composite",
      "source-layer": "admin",
      "minzoom": 2,
      "filter": [
        "all",
        [
          "==",
          ["get", "admin_level"],
          1
        ],
        [
          "==",
          ["get", "maritime"],
          "false"
        ],
        [
          "match",
          ["get", "worldview"],
          ["all", "US"],
          true,
          false
        ]
      ],
      "layout": {"line-join": "round", "line-cap": "round"},
      "paint": {
        "line-dasharray": [
          "step",
          ["zoom"],
          [
            "literal",
            [2, 0]
          ],
          7,
          [
            "literal",
            [2, 2, 6, 2]
          ]
        ],
        "line-width": [
          "interpolate",
          ["linear"],
          ["zoom"],
          7,
          0.75,
          12,
          1.5
        ],
        "line-opacity": [
          "interpolate",
          ["linear"],
          ["zoom"],
          2,
          0,
          3,
          1
        ],
        "line-color": [
          "interpolate",
          ["linear"],
          ["zoom"],
          3,
          "hsl(250, 6%, 60%)",
          7,
          "hsl(250, 10%, 70%)"
        ]
      }
    },
    {
      "id": "admin-0-boundary",
      "type": "line",
      "metadata": {
        "mapbox:featureComponent": "admin-boundaries",
        "mapbox:group": "Administrative boundaries, admin"
      },
      "source": "composite",
      "source-layer": "admin",
      "minzoom": 1,
      "filter": [
        "all",
        [
          "==",
          ["get", "admin_level"],
          0
        ],
        [
          "==",
          ["get", "disputed"],
          "false"
        ],
        [
          "==",
          ["get", "maritime"],
          "false"
        ],
        [
          "match",
          ["get", "worldview"],
          ["all", "US"],
          true,
          false
        ]
      ],
      "layout": {"line-join": "round", "line-cap": "round"},
      "paint": {
        "line-color": "hsl(250, 10%, 65%)",
        "line-width": [
          "interpolate",
          ["linear"],
          ["zoom"],
          3,
          0.5,
          10,
          2
        ],
        "line-dasharray": [10, 0]
      }
    },
    {
      "id": "admin-0-boundary-disputed",
      "type": "line",
      "metadata": {
        "mapbox:featureComponent": "admin-boundaries",
        "mapbox:group": "Administrative boundaries, admin"
      },
      "source": "composite",
      "source-layer": "admin",
      "minzoom": 1,
      "filter": [
        "all",
        [
          "==",
          ["get", "disputed"],
          "true"
        ],
        [
          "==",
          ["get", "admin_level"],
          0
        ],
        [
          "==",
          ["get", "maritime"],
          "false"
        ],
        [
          "match",
          ["get", "worldview"],
          ["all", "US"],
          true,
          false
        ]
      ],
      "layout": {"line-join": "round"},
      "paint": {
        "line-color": "hsl(250, 10%, 65%)",
        "line-width": [
          "interpolate",
          ["linear"],
          ["zoom"],
          3,
          0.5,
          10,
          2
        ],
        "line-dasharray": [
          "step",
          ["zoom"],
          [
            "literal",
            [3.25, 3.25]
          ],
          6,
          [
            "literal",
            [2.5, 2.5]
          ],
          7,
          [
            "literal",
            [2, 2.25]
          ],
          8,
          [
            "literal",
            [1.75, 2]
          ]
        ]
      }
    },
    {
      "id": "road-intersection",
      "type": "symbol",
      "metadata": {
        "mapbox:featureComponent": "road-network",
        "mapbox:group": "Road network, road-labels"
      },
      "source": "composite",
      "source-layer": "road",
      "minzoom": 15,
      "filter": [
        "all",
        [
          "==",
          ["get", "class"],
          "intersection"
        ],
        ["has", "name"]
      ],
      "layout": {
        "text-field": [
          "coalesce",
          ["get", "name_en"],
          ["get", "name"]
        ],
        "icon-image": "intersection",
        "icon-text-fit": "both",
        "icon-text-fit-padding": [1, 2, 1, 2],
        "text-size": 12,
        "text-font": ["DIN Pro Bold", "Arial Unicode MS Bold"]
      },
      "paint": {"text-color": "hsl(230, 57%, 52%)"}
    },
    {
      "id": "road-label-navigation",
      "type": "symbol",
      "metadata": {
        "mapbox:featureComponent": "road-network",
        "mapbox:group": "Road network, road-labels"
      },
      "source": "composite",
      "source-layer": "road",
      "minzoom": 13,
      "filter": [
        "step",
        ["zoom"],
        [
          "match",
          ["get", "class"],
          ["motorway", "trunk", "primary", "secondary", "tertiary"],
          true,
          false
        ],
        15,
        [
          "match",
          ["get", "class"],
          ["motorway", "trunk", "primary", "secondary", "tertiary", "street"],
          true,
          false
        ],
        16,
        [
          "match",
          ["get", "class"],
          [
            "motorway",
            "trunk",
            "primary",
            "secondary",
            "tertiary",
            "street",
            "street_limited"
          ],
          true,
          false
        ],
        17,
        [
          "match",
          ["get", "class"],
          ["pedestrian", "golf", "ferry", "aerialway", "path"],
          false,
          true
        ]
      ],
      "layout": {
        "text-size": [
          "interpolate",
          ["linear"],
          ["zoom"],
          10,
          [
            "match",
            ["get", "class"],
            ["motorway", "trunk", "primary", "secondary", "tertiary"],
            11,
            [
              "motorway_link",
              "trunk_link",
              "primary_link",
              "secondary_link",
              "tertiary_link",
              "street",
              "street_limited"
            ],
            8.8,
            7.15
          ],
          18,
          [
            "match",
            ["get", "class"],
            ["motorway", "trunk", "primary", "secondary", "tertiary"],
            17.6,
            [
              "motorway_link",
              "trunk_link",
              "primary_link",
              "secondary_link",
              "tertiary_link",
              "street",
              "street_limited"
            ],
            15.400000000000002,
            14.3
          ],
          22,
          [
            "match",
            ["get", "class"],
            ["motorway", "trunk", "primary", "secondary", "tertiary"],
            55.00000000000001,
            [
              "motorway_link",
              "trunk_link",
              "primary_link",
              "secondary_link",
              "tertiary_link",
              "street",
              "street_limited"
            ],
            44,
            33
          ]
        ],
        "text-max-angle": 30,
        "symbol-spacing": [
          "interpolate",
          ["linear"],
          ["zoom"],
          10,
          150,
          18,
          450,
          22,
          1500
        ],
        "text-font": ["DIN Pro Medium", "Arial Unicode MS Regular"],
        "symbol-placement": "line",
        "text-padding": 1,
        "text-rotation-alignment": "map",
        "text-pitch-alignment": "viewport",
        "text-field": [
          "coalesce",
          ["get", "name_en"],
          ["get", "name"]
        ],
        "text-letter-spacing": 0.01
      },
      "paint": {
        "text-color": "hsl(0, 0%, 90%)",
        "text-halo-color": [
          "match",
          ["get", "class"],
          ["motorway", "trunk"],
          "hsla(214, 46%, 24%, 0.75)",
          "hsl(213, 14%, 19%)"
        ],
        "text-halo-width": 1,
        "text-halo-blur": 1
      }
    },
    {
      "id": "road-number-shield-navigation",
      "type": "symbol",
      "metadata": {
        "mapbox:featureComponent": "road-network",
        "mapbox:group": "Road network, road-labels"
      },
      "source": "composite",
      "source-layer": "road",
      "minzoom": 6,
      "filter": [
        "all",
        ["has", "reflen"],
        [
          "<=",
          ["get", "reflen"],
          6
        ],
        [
          "step",
          ["zoom"],
          [
            "==",
            ["geometry-type"],
            "Point"
          ],
          11,
          [
            ">",
            ["get", "len"],
            5000
          ],
          12,
          [
            ">",
            ["get", "len"],
            2500
          ],
          13,
          [
            ">",
            ["get", "len"],
            1000
          ],
          14,
          true
        ]
      ],
      "layout": {
        "text-size": [
          "interpolate",
          ["exponential", 1.5],
          ["zoom"],
          6,
          14,
          22,
          26
        ],
        "icon-image": [
          "concat",
          ["get", "shield"],
          "-",
          [
            "to-string",
            ["get", "reflen"]
          ]
        ],
        "icon-rotation-alignment": "viewport",
        "text-max-angle": 38,
        "symbol-spacing": [
          "interpolate",
          ["linear"],
          ["zoom"],
          11,
          400,
          14,
          600,
          16,
          800,
          22,
          1200
        ],
        "text-font": ["DIN Pro Bold", "Arial Unicode MS Bold"],
        "symbol-placement": [
          "step",
          ["zoom"],
          "point",
          11,
          "line"
        ],
        "text-rotation-alignment": "viewport",
        "icon-size": [
          "interpolate",
          ["exponential", 1.5],
          ["zoom"],
          6,
          0.5,
          13,
          0.5,
          22,
          1
        ],
        "text-field": ["get", "ref"],
        "text-letter-spacing": 0.05
      },
      "paint": {
        "text-color": [
          "match",
          ["get", "shield_text_color"],
          "white",
          "hsl(0, 0%, 78%)",
          "yellow",
          "hsl(50, 100%, 54%)",
          "orange",
          "hsl(25, 100%, 61%)",
          "blue",
          "hsl(230, 57%, 32%)",
          "hsl(230, 18%, 10%)"
        ]
      }
    },
    {
      "id": "road-exit-shield-navigation",
      "type": "symbol",
      "metadata": {
        "mapbox:featureComponent": "road-network",
        "mapbox:group": "Road network, road-labels"
      },
      "source": "composite",
      "source-layer": "motorway_junction",
      "minzoom": 14,
      "filter": [
        "all",
        ["has", "reflen"],
        [
          "<=",
          ["get", "reflen"],
          9
        ]
      ],
      "layout": {
        "text-field": ["get", "ref"],
        "text-size": [
          "interpolate",
          ["exponential", 1.5],
          ["zoom"],
          6,
          14,
          22,
          26
        ],
        "text-font": ["DIN Pro Bold", "Arial Unicode MS Bold"],
        "icon-image": [
          "concat",
          "motorway-exit-",
          [
            "to-string",
            ["get", "reflen"]
          ]
        ],
        "icon-size": [
          "interpolate",
          ["exponential", 1.5],
          ["zoom"],
          6,
          0.5,
          13,
          0.5,
          22,
          1
        ]
      },
      "paint": {"text-color": "hsl(0, 0%, 78%)"}
    },
    {
      "id": "ferry-aerialway-label",
      "type": "symbol",
      "metadata": {
        "mapbox:featureComponent": "transit",
        "mapbox:group": "Transit, ferry-aerialway-labels"
      },
      "source": "composite",
      "source-layer": "road",
      "minzoom": 15,
      "filter": [
        "match",
        ["get", "class"],
        "aerialway",
        true,
        "ferry",
        true,
        false
      ],
      "layout": {
        "text-size": [
          "interpolate",
          ["linear"],
          ["zoom"],
          10,
          8.450000000000001,
          18,
          16.900000000000002
        ],
        "text-max-angle": 30,
        "text-font": ["DIN Pro Regular", "Arial Unicode MS Regular"],
        "symbol-placement": "line",
        "text-padding": 1,
        "text-rotation-alignment": "map",
        "text-pitch-alignment": "viewport",
        "text-field": [
          "coalesce",
          ["get", "name_en"],
          ["get", "name"]
        ],
        "text-letter-spacing": 0.01
      },
      "paint": {
        "text-color": [
          "match",
          ["get", "class"],
          "ferry",
          "hsl(197, 0%, 89%)",
          "hsl(0, 0%, 90%)"
        ],
        "text-halo-color": [
          "match",
          ["get", "class"],
          "ferry",
          "hsl(197, 30%, 53%)",
          "hsl(214, 46%, 24%)"
        ],
        "text-halo-width": 1,
        "text-halo-blur": 1
      }
    },
    {
      "id": "waterway-label",
      "type": "symbol",
      "metadata": {
        "mapbox:featureComponent": "natural-features",
        "mapbox:group": "Natural features, natural-labels"
      },
      "source": "composite",
      "source-layer": "natural_label",
      "minzoom": 13,
      "filter": [
        "all",
        [
          "match",
          ["get", "class"],
          ["canal", "river", "stream"],
          [
            "match",
            ["get", "worldview"],
            ["all", "US"],
            true,
            false
          ],
          ["disputed_canal", "disputed_river", "disputed_stream"],
          [
            "all",
            [
              "==",
              ["get", "disputed"],
              "true"
            ],
            [
              "match",
              ["get", "worldview"],
              ["all", "US"],
              true,
              false
            ]
          ],
          false
        ],
        [
          "==",
          ["geometry-type"],
          "LineString"
        ]
      ],
      "layout": {
        "text-font": ["DIN Pro Italic", "Arial Unicode MS Regular"],
        "text-max-angle": 30,
        "symbol-spacing": [
          "interpolate",
          ["linear", 1],
          ["zoom"],
          15,
          250,
          17,
          400
        ],
        "text-size": [
          "interpolate",
          ["linear"],
          ["zoom"],
          13,
          12,
          18,
          16
        ],
        "symbol-placement": "line",
        "text-pitch-alignment": "viewport",
        "text-field": [
          "coalesce",
          ["get", "name_en"],
          ["get", "name"]
        ]
      },
      "paint": {"text-color": "hsl(197, 0%, 90%)"}
    },
    {
      "id": "natural-line-label",
      "type": "symbol",
      "metadata": {
        "mapbox:featureComponent": "natural-features",
        "mapbox:group": "Natural features, natural-labels"
      },
      "source": "composite",
      "source-layer": "natural_label",
      "minzoom": 4,
      "filter": [
        "all",
        [
          "match",
          ["get", "class"],
          ["glacier", "landform"],
          [
            "match",
            ["get", "worldview"],
            ["all", "US"],
            true,
            false
          ],
          ["disputed_glacier", "disputed_landform"],
          [
            "all",
            [
              "==",
              ["get", "disputed"],
              "true"
            ],
            [
              "match",
              ["get", "worldview"],
              ["all", "US"],
              true,
              false
            ]
          ],
          false
        ],
        [
          "==",
          ["geometry-type"],
          "LineString"
        ],
        [
          "<=",
          ["get", "filterrank"],
          0
        ]
      ],
      "layout": {
        "text-size": [
          "step",
          ["zoom"],
          [
            "step",
            ["get", "sizerank"],
            19.8,
            5,
            13.200000000000001
          ],
          17,
          [
            "step",
            ["get", "sizerank"],
            19.8,
            13,
            13.200000000000001
          ]
        ],
        "text-max-angle": 30,
        "text-field": [
          "coalesce",
          ["get", "name_en"],
          ["get", "name"]
        ],
        "text-font": ["DIN Pro Medium", "Arial Unicode MS Regular"],
        "symbol-placement": "line-center",
        "text-pitch-alignment": "viewport"
      },
      "paint": {
        "text-halo-width": 0.5,
        "text-halo-color": "hsl(214, 46%, 24%)",
        "text-halo-blur": 0.5,
        "text-color": [
          "step",
          ["zoom"],
          [
            "step",
            ["get", "sizerank"],
            "hsl(236, 1%, 100%)",
            5,
            "hsl(236, 6%, 98%)"
          ],
          17,
          [
            "step",
            ["get", "sizerank"],
            "hsl(236, 1%, 100%)",
            13,
            "hsl(236, 6%, 98%)"
          ]
        ]
      }
    },
    {
      "id": "natural-point-label",
      "type": "symbol",
      "metadata": {
        "mapbox:featureComponent": "natural-features",
        "mapbox:group": "Natural features, natural-labels"
      },
      "source": "composite",
      "source-layer": "natural_label",
      "minzoom": 4,
      "filter": [
        "all",
        [
          "match",
          ["get", "class"],
          ["dock", "glacier", "landform", "water_feature", "wetland"],
          [
            "match",
            ["get", "worldview"],
            ["all", "US"],
            true,
            false
          ],
          [
            "disputed_dock",
            "disputed_glacier",
            "disputed_landform",
            "disputed_water_feature",
            "disputed_wetland"
          ],
          [
            "all",
            [
              "==",
              ["get", "disputed"],
              "true"
            ],
            [
              "match",
              ["get", "worldview"],
              ["all", "US"],
              true,
              false
            ]
          ],
          false
        ],
        [
          "==",
          ["geometry-type"],
          "Point"
        ],
        [
          "<=",
          ["get", "filterrank"],
          0
        ]
      ],
      "layout": {
        "text-size": [
          "step",
          ["zoom"],
          [
            "step",
            ["get", "sizerank"],
            19.8,
            5,
            13.200000000000001
          ],
          17,
          [
            "step",
            ["get", "sizerank"],
            19.8,
            13,
            13.200000000000001
          ]
        ],
        "icon-image": ["get", "maki"],
        "text-font": ["DIN Pro Medium", "Arial Unicode MS Regular"],
        "text-offset": [
          "step",
          ["zoom"],
          [
            "step",
            ["get", "sizerank"],
            [
              "literal",
              [0, 0]
            ],
            5,
            [
              "literal",
              [0, 0.75]
            ]
          ],
          17,
          [
            "step",
            ["get", "sizerank"],
            [
              "literal",
              [0, 0]
            ],
            13,
            [
              "literal",
              [0, 0.75]
            ]
          ]
        ],
        "text-anchor": [
          "step",
          ["zoom"],
          [
            "step",
            ["get", "sizerank"],
            "center",
            5,
            "top"
          ],
          17,
          [
            "step",
            ["get", "sizerank"],
            "center",
            13,
            "top"
          ]
        ],
        "text-field": [
          "coalesce",
          ["get", "name_en"],
          ["get", "name"]
        ]
      },
      "paint": {
        "icon-opacity": [
          "step",
          ["zoom"],
          [
            "step",
            ["get", "sizerank"],
            0,
            5,
            1
          ],
          17,
          [
            "step",
            ["get", "sizerank"],
            0,
            13,
            1
          ]
        ],
        "text-halo-color": "hsl(214, 46%, 24%)",
        "text-halo-width": 0.5,
        "text-halo-blur": 0.5,
        "text-color": [
          "step",
          ["zoom"],
          [
            "step",
            ["get", "sizerank"],
            "hsl(236, 1%, 100%)",
            5,
            "hsl(236, 6%, 98%)"
          ],
          17,
          [
            "step",
            ["get", "sizerank"],
            "hsl(236, 1%, 100%)",
            13,
            "hsl(236, 6%, 98%)"
          ]
        ]
      }
    },
    {
      "id": "water-line-label",
      "type": "symbol",
      "metadata": {
        "mapbox:featureComponent": "natural-features",
        "mapbox:group": "Natural features, natural-labels"
      },
      "source": "composite",
      "source-layer": "natural_label",
      "filter": [
        "all",
        [
          "match",
          ["get", "class"],
          ["bay", "ocean", "reservoir", "sea", "water"],
          [
            "match",
            ["get", "worldview"],
            ["all", "US"],
            true,
            false
          ],
          [
            "disputed_bay",
            "disputed_ocean",
            "disputed_reservoir",
            "disputed_sea",
            "disputed_water"
          ],
          [
            "all",
            [
              "==",
              ["get", "disputed"],
              "true"
            ],
            [
              "match",
              ["get", "worldview"],
              ["all", "US"],
              true,
              false
            ]
          ],
          false
        ],
        [
          "==",
          ["geometry-type"],
          "LineString"
        ]
      ],
      "layout": {
        "text-size": [
          "interpolate",
          ["linear"],
          ["zoom"],
          7,
          [
            "step",
            ["get", "sizerank"],
            20,
            6,
            18,
            12,
            12
          ],
          10,
          [
            "step",
            ["get", "sizerank"],
            15,
            9,
            12
          ],
          18,
          [
            "step",
            ["get", "sizerank"],
            15,
            9,
            14
          ]
        ],
        "text-max-angle": 30,
        "text-letter-spacing": [
          "match",
          ["get", "class"],
          "ocean",
          0.25,
          ["sea", "bay"],
          0.15,
          0
        ],
        "text-font": ["DIN Pro Italic", "Arial Unicode MS Regular"],
        "symbol-placement": "line-center",
        "text-pitch-alignment": "viewport",
        "text-field": [
          "coalesce",
          ["get", "name_en"],
          ["get", "name"]
        ]
      },
      "paint": {
        "text-color": [
          "match",
          ["get", "class"],
          ["bay", "ocean", "sea"],
          "hsl(197, 26%, 73%)",
          "hsl(197, 0%, 90%)"
        ]
      }
    },
    {
      "id": "water-point-label",
      "type": "symbol",
      "metadata": {
        "mapbox:featureComponent": "natural-features",
        "mapbox:group": "Natural features, natural-labels"
      },
      "source": "composite",
      "source-layer": "natural_label",
      "filter": [
        "all",
        [
          "match",
          ["get", "class"],
          ["bay", "ocean", "reservoir", "sea", "water"],
          [
            "match",
            ["get", "worldview"],
            ["all", "US"],
            true,
            false
          ],
          [
            "disputed_bay",
            "disputed_ocean",
            "disputed_reservoir",
            "disputed_sea",
            "disputed_water"
          ],
          [
            "all",
            [
              "==",
              ["get", "disputed"],
              "true"
            ],
            [
              "match",
              ["get", "worldview"],
              ["all", "US"],
              true,
              false
            ]
          ],
          false
        ],
        [
          "==",
          ["geometry-type"],
          "Point"
        ]
      ],
      "layout": {
        "text-line-height": 1.3,
        "text-size": [
          "interpolate",
          ["linear"],
          ["zoom"],
          7,
          [
            "step",
            ["get", "sizerank"],
            20,
            6,
            15,
            12,
            12
          ],
          10,
          [
            "step",
            ["get", "sizerank"],
            15,
            9,
            12
          ]
        ],
        "text-font": ["DIN Pro Italic", "Arial Unicode MS Regular"],
        "text-field": [
          "coalesce",
          ["get", "name_en"],
          ["get", "name"]
        ],
        "text-letter-spacing": [
          "match",
          ["get", "class"],
          "ocean",
          0.25,
          ["bay", "sea"],
          0.15,
          0.01
        ],
        "text-max-width": [
          "match",
          ["get", "class"],
          "ocean",
          4,
          "sea",
          5,
          ["bay", "water"],
          7,
          10
        ]
      },
      "paint": {
        "text-color": [
          "match",
          ["get", "class"],
          ["bay", "ocean", "sea"],
          "hsl(197, 26%, 73%)",
          "hsl(197, 0%, 90%)"
        ]
      }
    },
    {
      "id": "poi-label",
      "type": "symbol",
      "metadata": {
        "mapbox:featureComponent": "point-of-interest-labels",
        "mapbox:group": "Point of interest labels, poi-labels"
      },
      "source": "composite",
      "source-layer": "poi_label",
      "minzoom": 6,
      "filter": [
        "<=",
        ["get", "filterrank"],
        [
          "+",
          [
            "step",
            ["zoom"],
            0,
            16,
            1,
            17,
            2
          ],
          [
            "match",
            ["get", "class"],
            "education",
            1,
            "landmark",
            2,
            "medical",
            1,
            "motorist",
            3,
            "park_like",
            1,
            0
          ]
        ]
      ],
      "layout": {
        "text-size": [
          "step",
          ["zoom"],
          [
            "step",
            ["get", "sizerank"],
            19.8,
            5,
            13.200000000000001
          ],
          17,
          [
            "step",
            ["get", "sizerank"],
            19.8,
            13,
            13.200000000000001
          ]
        ],
        "icon-image": [
          "case",
          ["has", "maki_beta"],
          [
            "coalesce",
            [
              "image",
              ["get", "maki_beta"]
            ],
            [
              "image",
              ["get", "maki"]
            ]
          ],
          [
            "image",
            ["get", "maki"]
          ]
        ],
        "text-font": ["DIN Pro Medium", "Arial Unicode MS Regular"],
        "text-offset": [
          "step",
          ["zoom"],
          [
            "step",
            ["get", "sizerank"],
            [
              "literal",
              [0, 0]
            ],
            5,
            [
              "literal",
              [0, 0.75]
            ]
          ],
          17,
          [
            "step",
            ["get", "sizerank"],
            [
              "literal",
              [0, 0]
            ],
            13,
            [
              "literal",
              [0, 0.75]
            ]
          ]
        ],
        "text-anchor": [
          "step",
          ["zoom"],
          [
            "step",
            ["get", "sizerank"],
            "center",
            5,
            "top"
          ],
          17,
          [
            "step",
            ["get", "sizerank"],
            "center",
            13,
            "top"
          ]
        ],
        "text-field": [
          "coalesce",
          ["get", "name_en"],
          ["get", "name"]
        ]
      },
      "paint": {
        "icon-opacity": [
          "step",
          ["zoom"],
          [
            "step",
            ["get", "sizerank"],
            0,
            5,
            1
          ],
          17,
          [
            "step",
            ["get", "sizerank"],
            0,
            13,
            1
          ]
        ],
        "text-halo-color": [
          "match",
          ["get", "class"],
          "park_like",
          "hsl(170, 47%, 24%)",
          "education",
          "hsl(200, 31%, 10%)",
          "medical",
          "hsl(252, 16%, 15%)",
          "hsl(214, 46%, 24%)"
        ],
        "text-halo-width": 0.5,
        "text-halo-blur": 0.5,
        "text-color": [
          "step",
          ["zoom"],
          [
            "step",
            ["get", "sizerank"],
            [
              "match",
              ["get", "class"],
              "food_and_drink",
              "hsl(230, 7%, 100%)",
              "park_like",
              "hsl(150, 52%, 77%)",
              "education",
              "hsl(200, 4%, 100%)",
              "medical",
              "hsl(252, 2%, 94%)",
              "hsl(236, 1%, 100%)"
            ],
            5,
            [
              "match",
              ["get", "class"],
              "food_and_drink",
              "hsl(230, 13%, 100%)",
              "park_like",
              "hsl(150, 51%, 66%)",
              "education",
              "hsl(200, 10%, 100%)",
              "medical",
              "hsl(252, 2%, 99%)",
              "hsl(236, 6%, 98%)"
            ]
          ],
          17,
          [
            "step",
            ["get", "sizerank"],
            [
              "match",
              ["get", "class"],
              "food_and_drink",
              "hsl(230, 7%, 100%)",
              "park_like",
              "hsl(150, 52%, 77%)",
              "education",
              "hsl(200, 4%, 100%)",
              "medical",
              "hsl(252, 2%, 94%)",
              "hsl(236, 1%, 100%)"
            ],
            13,
            [
              "match",
              ["get", "class"],
              "food_and_drink",
              "hsl(230, 13%, 100%)",
              "park_like",
              "hsl(150, 51%, 66%)",
              "education",
              "hsl(200, 10%, 100%)",
              "medical",
              "hsl(252, 2%, 99%)",
              "hsl(236, 6%, 98%)"
            ]
          ]
        ]
      }
    },
    {
      "id": "airport-label",
      "type": "symbol",
      "metadata": {
        "mapbox:featureComponent": "transit",
        "mapbox:group": "Transit, transit-labels"
      },
      "source": "composite",
      "source-layer": "airport_label",
      "minzoom": 8,
      "filter": [
        "match",
        ["get", "class"],
        ["military", "civil"],
        [
          "match",
          ["get", "worldview"],
          ["all", "US"],
          true,
          false
        ],
        ["disputed_military", "disputed_civil"],
        [
          "all",
          [
            "==",
            ["get", "disputed"],
            "true"
          ],
          [
            "match",
            ["get", "worldview"],
            ["all", "US"],
            true,
            false
          ]
        ],
        false
      ],
      "layout": {
        "text-line-height": 1.1,
        "text-size": [
          "step",
          ["get", "sizerank"],
          19.8,
          9,
          13.200000000000001
        ],
        "icon-image": ["get", "maki"],
        "text-font": ["DIN Pro Medium", "Arial Unicode MS Regular"],
        "text-offset": [0, 0.75],
        "text-rotation-alignment": "viewport",
        "text-anchor": "top",
        "text-field": [
          "step",
          ["get", "sizerank"],
          [
            "coalesce",
            ["get", "name_en"],
            ["get", "name"]
          ],
          15,
          ["get", "ref"]
        ],
        "text-letter-spacing": 0.01,
        "text-max-width": 9
      },
      "paint": {
        "text-color": "hsl(230, 18%, 100%)",
        "text-halo-color": "hsl(230, 61%, 15%)",
        "text-halo-width": 1
      }
    },
    {
      "id": "settlement-subdivision-label",
      "type": "symbol",
      "metadata": {
        "mapbox:featureComponent": "place-labels",
        "mapbox:group": "Place labels, place-labels"
      },
      "source": "composite",
      "source-layer": "place_label",
      "minzoom": 10,
      "maxzoom": 15,
      "filter": [
        "all",
        [
          "match",
          ["get", "class"],
          "settlement_subdivision",
          [
            "match",
            ["get", "worldview"],
            ["all", "US"],
            true,
            false
          ],
          "disputed_settlement_subdivision",
          [
            "all",
            [
              "==",
              ["get", "disputed"],
              "true"
            ],
            [
              "match",
              ["get", "worldview"],
              ["all", "US"],
              true,
              false
            ]
          ],
          false
        ],
        [
          "<=",
          ["get", "filterrank"],
          3
        ]
      ],
      "layout": {
        "text-field": [
          "coalesce",
          ["get", "name_en"],
          ["get", "name"]
        ],
        "text-transform": "uppercase",
        "text-font": ["DIN Pro Medium", "Arial Unicode MS Regular"],
        "text-letter-spacing": [
          "match",
          ["get", "type"],
          "suburb",
          0.15,
          0.1
        ],
        "text-max-width": 7,
        "text-padding": 3,
        "text-size": [
          "interpolate",
          ["cubic-bezier", 0.5, 0, 1, 1],
          ["zoom"],
          11,
          [
            "match",
            ["get", "type"],
            "suburb",
            12.100000000000001,
            11.55
          ],
          15,
          [
            "match",
            ["get", "type"],
            "suburb",
            16.5,
            15.400000000000002
          ]
        ]
      },
      "paint": {
        "text-halo-color": "hsla(214, 46%, 24%, 0.75)",
        "text-halo-width": 1,
        "text-color": "hsl(215, 30%, 85%)",
        "text-halo-blur": 0.5
      }
    },
    {
      "id": "settlement-minor-label",
      "type": "symbol",
      "metadata": {
        "mapbox:featureComponent": "place-labels",
        "mapbox:group": "Place labels, place-labels"
      },
      "source": "composite",
      "source-layer": "place_label",
      "minzoom": 3,
      "maxzoom": 13,
      "filter": [
        "all",
        [
          "<=",
          ["get", "filterrank"],
          2
        ],
        [
          "match",
          ["get", "class"],
          "settlement",
          [
            "match",
            ["get", "worldview"],
            ["all", "US"],
            true,
            false
          ],
          "disputed_settlement",
          [
            "all",
            [
              "==",
              ["get", "disputed"],
              "true"
            ],
            [
              "match",
              ["get", "worldview"],
              ["all", "US"],
              true,
              false
            ]
          ],
          false
        ],
        [
          "step",
          ["zoom"],
          [
            ">",
            ["get", "symbolrank"],
            6
          ],
          4,
          [
            ">=",
            ["get", "symbolrank"],
            7
          ],
          6,
          [
            ">=",
            ["get", "symbolrank"],
            8
          ],
          7,
          [
            ">=",
            ["get", "symbolrank"],
            10
          ],
          10,
          [
            ">=",
            ["get", "symbolrank"],
            11
          ],
          11,
          [
            ">=",
            ["get", "symbolrank"],
            13
          ],
          12,
          [
            ">=",
            ["get", "symbolrank"],
            15
          ]
        ]
      ],
      "layout": {
        "text-line-height": 1.1,
        "text-size": [
          "interpolate",
          ["cubic-bezier", 0.2, 0, 0.9, 1],
          ["zoom"],
          3,
          [
            "step",
            ["get", "symbolrank"],
            13.200000000000001,
            9,
            12.100000000000001,
            10,
            11.55,
            12,
            10.450000000000001,
            14,
            9.350000000000001,
            16,
            7.15,
            17,
            4.4
          ],
          13,
          [
            "step",
            ["get", "symbolrank"],
            25.3,
            9,
            23.1,
            10,
            20.900000000000002,
            11,
            18.700000000000003,
            12,
            17.6,
            13,
            16.5,
            15,
            14.3
          ]
        ],
        "text-radial-offset": [
          "step",
          ["zoom"],
          [
            "match",
            ["get", "capital"],
            2,
            0.6,
            0.55
          ],
          8,
          0
        ],
        "icon-image": [
          "step",
          ["zoom"],
          [
            "case",
            [
              "==",
              ["get", "capital"],
              2
            ],
            "border-dot-13",
            [
              "step",
              ["get", "symbolrank"],
              "dot-11",
              9,
              "dot-10",
              11,
              "dot-9"
            ]
          ],
          8,
          ""
        ],
        "text-font": ["DIN Pro Regular", "Arial Unicode MS Regular"],
        "text-justify": "auto",
        "text-anchor": [
          "step",
          ["zoom"],
          ["get", "text_anchor"],
          8,
          "center"
        ],
        "text-field": [
          "coalesce",
          ["get", "name_en"],
          ["get", "name"]
        ],
        "text-max-width": 7
      },
      "paint": {
        "text-color": "hsl(215, 30%, 75%)",
        "text-halo-color": "hsl(214, 46%, 24%)",
        "text-halo-width": 1,
        "text-halo-blur": 1
      }
    },
    {
      "id": "settlement-major-label",
      "type": "symbol",
      "metadata": {
        "mapbox:featureComponent": "place-labels",
        "mapbox:group": "Place labels, place-labels"
      },
      "source": "composite",
      "source-layer": "place_label",
      "minzoom": 3,
      "maxzoom": 15,
      "filter": [
        "all",
        [
          "<=",
          ["get", "filterrank"],
          2
        ],
        [
          "match",
          ["get", "class"],
          "settlement",
          [
            "match",
            ["get", "worldview"],
            ["all", "US"],
            true,
            false
          ],
          "disputed_settlement",
          [
            "all",
            [
              "==",
              ["get", "disputed"],
              "true"
            ],
            [
              "match",
              ["get", "worldview"],
              ["all", "US"],
              true,
              false
            ]
          ],
          false
        ],
        [
          "step",
          ["zoom"],
          false,
          3,
          [
            "<=",
            ["get", "symbolrank"],
            6
          ],
          4,
          [
            "<",
            ["get", "symbolrank"],
            7
          ],
          6,
          [
            "<",
            ["get", "symbolrank"],
            8
          ],
          7,
          [
            "<",
            ["get", "symbolrank"],
            10
          ],
          10,
          [
            "<",
            ["get", "symbolrank"],
            11
          ],
          11,
          [
            "<",
            ["get", "symbolrank"],
            13
          ],
          12,
          [
            "<",
            ["get", "symbolrank"],
            15
          ],
          13,
          [
            ">=",
            ["get", "symbolrank"],
            11
          ],
          14,
          [
            ">=",
            ["get", "symbolrank"],
            15
          ]
        ]
      ],
      "layout": {
        "text-line-height": 1.1,
        "text-size": [
          "interpolate",
          ["cubic-bezier", 0.2, 0, 0.9, 1],
          ["zoom"],
          3,
          [
            "step",
            ["get", "symbolrank"],
            16.900000000000002,
            6,
            15.600000000000001
          ],
          6,
          [
            "step",
            ["get", "symbolrank"],
            20.8,
            6,
            19.5,
            7,
            18.2
          ],
          8,
          [
            "step",
            ["get", "symbolrank"],
            23.400000000000002,
            9,
            22.1,
            10,
            19.5
          ],
          15,
          [
            "step",
            ["get", "symbolrank"],
            29.900000000000002,
            9,
            28.6,
            10,
            26,
            11,
            23.400000000000002,
            12,
            20.8,
            13,
            19.5,
            15,
            16.900000000000002
          ]
        ],
        "text-radial-offset": [
          "step",
          ["zoom"],
          [
            "match",
            ["get", "capital"],
            2,
            0.6,
            0.55
          ],
          8,
          0
        ],
        "icon-image": [
          "step",
          ["zoom"],
          [
            "case",
            [
              "==",
              ["get", "capital"],
              2
            ],
            "border-dot-13",
            [
              "step",
              ["get", "symbolrank"],
              "dot-11",
              9,
              "dot-10",
              11,
              "dot-9"
            ]
          ],
          8,
          ""
        ],
        "text-font": ["DIN Pro Medium", "Arial Unicode MS Regular"],
        "text-justify": [
          "step",
          ["zoom"],
          [
            "match",
            ["get", "text_anchor"],
            ["left", "bottom-left", "top-left"],
            "left",
            ["right", "bottom-right", "top-right"],
            "right",
            "center"
          ],
          8,
          "center"
        ],
        "text-anchor": [
          "step",
          ["zoom"],
          ["get", "text_anchor"],
          8,
          "center"
        ],
        "text-field": [
          "coalesce",
          ["get", "name_en"],
          ["get", "name"]
        ],
        "text-max-width": 7
      },
      "paint": {
        "text-color": "hsl(215, 30%, 75%)",
        "text-halo-color": "hsl(214, 46%, 24%)",
        "text-halo-width": 1,
        "text-halo-blur": 1
      }
    },
    {
      "id": "state-label",
      "type": "symbol",
      "metadata": {
        "mapbox:featureComponent": "place-labels",
        "mapbox:group": "Place labels, place-labels"
      },
      "source": "composite",
      "source-layer": "place_label",
      "minzoom": 3,
      "maxzoom": 9,
      "filter": [
        "match",
        ["get", "class"],
        "state",
        [
          "match",
          ["get", "worldview"],
          ["all", "US"],
          true,
          false
        ],
        "disputed_state",
        [
          "all",
          [
            "==",
            ["get", "disputed"],
            "true"
          ],
          [
            "match",
            ["get", "worldview"],
            ["all", "US"],
            true,
            false
          ]
        ],
        false
      ],
      "layout": {
        "text-size": [
          "interpolate",
          ["cubic-bezier", 0.85, 0.7, 0.65, 1],
          ["zoom"],
          4,
          [
            "step",
            ["get", "symbolrank"],
            12,
            6,
            11.4,
            7,
            10.799999999999999
          ],
          9,
          [
            "step",
            ["get", "symbolrank"],
            25.2,
            6,
            19.2,
            7,
            15.6
          ]
        ],
        "text-transform": "uppercase",
        "text-font": ["DIN Pro Bold", "Arial Unicode MS Bold"],
        "text-field": [
          "step",
          ["zoom"],
          [
            "step",
            ["get", "symbolrank"],
            [
              "coalesce",
              ["get", "name_en"],
              ["get", "name"]
            ],
            5,
            [
              "coalesce",
              ["get", "abbr"],
              ["get", "name_en"],
              ["get", "name"]
            ]
          ],
          5,
          [
            "coalesce",
            ["get", "name_en"],
            ["get", "name"]
          ]
        ],
        "text-letter-spacing": 0.15,
        "text-max-width": 6
      },
      "paint": {
        "text-color": "hsl(215, 30%, 75%)",
        "text-halo-color": "hsl(214, 46%, 24%)",
        "text-halo-width": 1
      }
    },
    {
      "id": "country-label",
      "type": "symbol",
      "metadata": {
        "mapbox:featureComponent": "place-labels",
        "mapbox:group": "Place labels, place-labels"
      },
      "source": "composite",
      "source-layer": "place_label",
      "minzoom": 1,
      "maxzoom": 10,
      "filter": [
        "match",
        ["get", "class"],
        "country",
        [
          "match",
          ["get", "worldview"],
          ["all", "US"],
          true,
          false
        ],
        "disputed_country",
        [
          "all",
          [
            "==",
            ["get", "disputed"],
            "true"
          ],
          [
            "match",
            ["get", "worldview"],
            ["all", "US"],
            true,
            false
          ]
        ],
        false
      ],
      "layout": {
        "icon-image": "",
        "text-field": [
          "coalesce",
          ["get", "name_en"],
          ["get", "name"]
        ],
        "text-line-height": 1.1,
        "text-max-width": 6,
        "text-font": ["DIN Pro Medium", "Arial Unicode MS Regular"],
        "text-radial-offset": [
          "step",
          ["zoom"],
          0.6,
          8,
          0
        ],
        "text-justify": [
          "step",
          ["zoom"],
          [
            "match",
            ["get", "text_anchor"],
            ["left", "bottom-left", "top-left"],
            "left",
            ["right", "bottom-right", "top-right"],
            "right",
            "center"
          ],
          7,
          "auto"
        ],
        "text-size": [
          "interpolate",
          ["cubic-bezier", 0.2, 0, 0.7, 1],
          ["zoom"],
          1,
          [
            "step",
            ["get", "symbolrank"],
            15.399999999999999,
            4,
            12.6,
            5,
            11.2
          ],
          9,
          [
            "step",
            ["get", "symbolrank"],
            30.799999999999997,
            4,
            26.599999999999998,
            5,
            23.799999999999997
          ]
        ]
      },
      "paint": {
        "icon-opacity": [
          "step",
          ["zoom"],
          [
            "case",
            ["has", "text_anchor"],
            1,
            0
          ],
          7,
          0
        ],
        "text-color": "hsl(215, 30%, 75%)",
        "text-halo-color": [
          "interpolate",
          ["linear"],
          ["zoom"],
          2,
          "hsla(214, 46%, 24%, 0.75)",
          3,
          "hsl(214, 46%, 24%)"
        ],
        "text-halo-width": 1.25
      }
    }
  ],
  "created": "2022-05-02T22:44:35.296Z",
  "modified": "2022-05-02T22:50:19.781Z",
  "id": "cl2pb7612000p14mfdkh2skty",
  "owner": "amjadalhaffar",
  "visibility": "private",
  "protected": false,
  "draft": false
}
""";