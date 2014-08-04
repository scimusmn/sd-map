/**
 ******************************************************************************
 * Setup
 ******************************************************************************
 */

/**
 * Base colors
 */
@riparian: #69813A;
@mountains: #08292F;
@torrey-pines: #225A40;
@understanding-change: #A75928;
@attic: #663233;
@desert: #225A40;
@wetlands: #527193;
@sd-background: #E2D9C2;

/**
 * Map background
 */
Map {
  /*background-color: #69813a;*/
  /*background-color: #e2d9c2;*/
  /*background-color: #b5b9ae;*/
  /*background-color: #AEAB9D*/
  background-color: #FFF;
}

/**
 ******************************************************************************
 * Anthropogenic features
 ******************************************************************************
 */

/**
 * Political boundaries
 *
 * Countries, states, and counties
 */
#us-mex,
#californiaeast,
#socalstates,
#nevada {
  polygon-opacity:0;
  polygon-fill:#ae8;
  ::case {
    line-color:#fff;
    line-width:5;
    line-opacity: .3;
    line-comp-op: screen;
    line-join: round;
    line-cap: round;
  }
  ::fill {
    line-color:#FFF;
    line-width:1;
    line-opacity: .7;
    line-comp-op: overlay;
    line-join: round;
    line-cap: round;
  }
}

#labels-states {
  text-name: [Label];
  text-face-name: 'Futura Medium';
  text-size: 24;
  text-fill: #EEE;
  /*text-fill: #DDD;*/
  text-opacity: .85;
  text-wrap-width: 60;
  text-wrap-before: true;
  text-halo-radius: 1.5;
  text-halo-fill: #AAA;
  text-min-distance: 2;
  text-placement-type: simple;
  text-dx: 10;
  text-dy: 10;
  text-placements: 'NE';
  marker-width:0;
  [Label = 'Mexico'] {
    text-dx: 5;
    text-dy: -7;
  }
}

#counties-dup,
#counties {
  ::case {
    line-color:#fff;
    line-width:3;
    line-opacity: .15;
    /*line-comp-op: screen;*/
    line-join: round;
    line-cap: round;
  }
  ::fill {
    line-color:#666;
    line-width: 1;
    line-opacity: .8;
    /*line-comp-op: overlay;*/
    line-join: round;
    line-cap: round;
  }
}

/**
 * Old county two line style.
 *
 * The client didn't like this style very much. It looks a bit too natural
 */
/*#counties-dup,*/
/*#counties {*/
  /*::case {*/
    /*line-color:#292622;*/
    /*line-width:3;*/
    /*[>line-opacity: .8;<]*/
    /*line-comp-op: screen;*/
    /*line-join: round;*/
    /*line-cap: round;*/
  /*}*/
  /*::fill {*/
    /*[>line-color:#ADA69D;<]*/
    /*line-color:#7c7368;*/
    /*line-width:1;*/
    /*line-opacity: .4;*/
    /*line-join: round;*/
    /*line-cap: round;*/
  /*}*/
/*}*/

/**
 * City markers and text labels
 */
#cities {
  text-name: [name];
  text-face-name: 'Futura Medium';
  text-size: 18;
  text-fill: #222;
  text-wrap-width: 60;
  text-wrap-before: true;
  text-halo-radius: 1.5;
  text-halo-fill: #fff;
  text-min-distance: 2;
  text-placement-type: simple;
  text-dx: 7;
  text-dy: 7;
  text-placements: 'NE';
  text-allow-overlap: true;
  marker-width:8;
  marker-fill:@attic;
  marker-line-color:#FFF;
  marker-line-width:1;
  marker-allow-overlap:true;
  [name = 'Blythe'] {
    text-placements: 'NW';
    text-dx: 5;
    text-dy: 7;
  }
  [name = 'Riverside'] {
    text-placements: 'SE';
    text-dx: 5;
    text-dy: 5;
  }
  [name = 'San Diego'] {
    text-placements: 'SW';
    text-dx: 10;
    text-dy: 7;
  }
}

/**
 * Urban area polygons
 *
 * This isn't currently used.
 */
#urban-areas {
  polygon-fill:black;
  polygon-opacity:.3;
  /*image-filters: agg-stack-blur(5, 5);*/
}

/**
 * Highways and roads
 */
#i5,
#i8,
#i10,
#i15 {
  /*line-width:3;*/
  /*line-opacity:.5;*/
  /*line-join: round;*/
  /*line-cap: round;*/
  /*line-color:#FFF;*/
  ::case {
    line-width: 5;
    line-color:#d83;
    line-opacity:.3;
  }
  ::fill {
    line-width: 2.5;
    line-color:#fe3;
    line-opacity:.3;
  }
}

/**
 * Label the highways with SVG chevrons
 */
#labels-roads {
  point-allow-overlap: true;
  point-transform:"scale(.04)";
  [Label = 'I-5'] {
    point-file:url(icons/I-5.svg);
  }
  [Label = 'I-8'] {
    point-file:url(icons/I-8.svg);
  }
  [Label = 'I-10'] {
    point-file:url(icons/I-10.svg);
  }
  [Label = 'I-15'] {
    point-file:url(icons/I-15.svg);
  }
}

/**
 ******************************************************************************
 * Natural features
 ******************************************************************************
 */

/**
 * Water styles
 *
 * Rivers, lakes, and the ocean.
 *
 * Bathymetry styles help indicate depth with darker colors.
 */
.rivers {
  line-width:1;
  line-color:@wetlands;
  line-opacity: .7;
  line-join: round;
}

.lakes {
  line-color:@wetlands;
  line-width:0.5;
  line-opacity: .5;
  line-join: round;
  polygon-opacity:.5;
  polygon-fill:@wetlands;
}

#ocean {
  polygon-fill:@wetlands;
  /*polygon-fill:#97adc5;*/
  line-color:#b1cdeb;
  /*line-color:#6e97c4;*/
  line-width:1;
  line-join: round;
}

#bath-200 {
  polygon-opacity:.3;
  polygon-fill:#4c6887;
}

#bath-1000 {
  polygon-opacity:.3;
  polygon-fill:#476280;
}

#bath-2000 {
  polygon-opacity:.3;
  polygon-fill:#455e7a;
}

#bath-3000 {
  polygon-opacity:.3;
  polygon-fill:#425a75;
}

#bath-4000 {
  polygon-opacity:.3;
  polygon-fill:#3f5670;
}

/**
 ******************************************************************************
 * Topography shading
 *
 * Simulating topography with hillshades and slopeshades
 ******************************************************************************
 */
#hillshades,
#slopes {
  raster-scaling: bilinear;
  raster-comp-op: multiply;
}

#hillshades {
  raster-opacity: 0.8;
}

#slopes {
  raster-opacity: 1;
}

#color-arid,
#color-warm,
#color-arid-warm-mix,
#color-custom-v01,
#color-custom-v02,
#color-custom-v03 {
  raster-scaling: bilinear;
  raster-comp-op: multiply;
  raster-opacity: .8;
}

@blank:            transparent;
@unused:           #9a9a9a;
@agriculture:      #91a487;
@grass:            #6b7e60;

/**
 ******************************************************************************
 * Unused colors
 *
 * Part of the GlobCover dataset and legend, but these don't show up in
 * SoCal
 *
 * These are assigned a red color so that they stand out in case they show 
 * up and should be more properly styled.
 ******************************************************************************
 */

/**
 * 230
 * No Data - NOT PRESENT
 *
 * color: #fff
 */
@no-data: red;

/**
 *****************************************************************************
 * Key colors
 *
 * Important to design for map appearance
 *****************************************************************************
 */
/**
 * 20
 * Rainfed cropland
 *
 * Quite common throughout the region. Scattered through the dry areas.
 * Occurs aat the Salton Sea drainage and along the Colorado River
 *
 * orig: rgb(255,255,100)
 */
@rainfed-cropland: rgb(255,255,100);

/**
 * 20
 * Mosaic cropland
 *
 * Mosaic cropland (50-70%) / vegetation (grassland/shrubland/forest) (20-50%)
 *
 * Quite common throughout the region. Scattered through the dry areas.
 *
 * orig: rgb(220,240,100)
 */
@mosaic-cropland: rgb(220,240,100);

/**
 * 30
 * Mosaic vegetation
 *
 * Mosaic vegetation (grassland/shrubland/forest) (50-70%) / cropland (20-50%)
 *
 * Quite common throughout the region. Scattered through the dry areas.
 *
 * orig: rgb(205,205,102)
 */
@mosaic-vegetation: rgb(205,205,102);

/**
 * 40
 * Mixed broadleaved forest
 *
 * Closed to open (>15%) broadleaved evergreen or semi-deciduous forest (>5m)
 *
 * Very rare in forests near lakes in Mexico
 *
 * orig: rgb(0,100,0)
 */
@mixed-broadleaved-forest: rgb(0,100,0);

/**
 * 50
 * Closed deciduous forest
 *
 * Closed (>40%) broadleaved deciduous forest (>5m)
 *
 * This is is more prevelant in NoCal, but still significant in SoCal.
 * Scatered throughout forests.
 *
 * orig: rgb(0,160,0)
 */
@closed-decid-forest: rgb(0,160,0);

/**
 * 60
 * Open deciduous forest
 *
 * Open (15-40%) broadleaved deciduous forest/woodland (>5m)
 *
 * Barely present. Scatered throughout forests.
 *
 * orig: rgb(170,200,0)
 */
@open-decid-forest: rgb(170,200,0);

/**
 * 70
 * Closed forest
 * 
 * Closed (>40%) needleleaved evergreen forest (>5m)
 *
 * This is the dominant forest style, making up most of the forest areas
 * in SoCal
 *
 * orig: rgb(0,60,0)
 */
@closed-forest: rgb(0,60,0);

/**
 * 90
 * Open forest - NOT PRESENT
 *
 * Open (15-40%) needleleaved deciduous or evergreen forest (>5m)
 *
 * Barely present. Mostly in areas around lakes in western SoCal
 *
 * orig: rgb(40,100,0)
 */
@open-forest: rgb(40,100,0);

/**
 * 100
 * Mixed needleleaved forest
 *
 * Closed to open (>15%) mixed broadleaved and needleleaved forest (>5m)
 *
 * Mixed into the centers of the larger forest areas
 *
 * orig: rgb(120,130,0)
 */
@mixed-needle-forest: rgb(120,130,0);

/**
 * 110
 * Mosaic forest
 *
 * Mosaic forest or shrubland (50-70%) / grassland (20-50%)
 *
 * Sprinkled through the SoCal western lands
 *
 * orig: rgb(140,160,0)
 */
@mosaic-forest: rgb(140,160,0);

/**
 * 120
 * Mosaic grassland
 *
 * Mosaic grassland (50-70%) / forest or shrubland (20-50%) 
 *
 * Sprinkled through the SoCal western lands
 *
 * orig: rgb(190,150,0))
 */
@mosaic-grassland: rgb(190,150,0);

/**
 * 130
 * Shrubland
 *
 * Closed to open (>15%) (broadleaved or needleleaved, evergreen or deciduous) shrubland (<5m)
 *
 * This is the majority of the Southern California map. The mountains and all The
 * dry land out to the east of the state is this clasification.
 *
 * orig: rgb(150,100,0)
 * color: #D5DB99;
 */
@shrubland: #D5DB99;

/**
 * 140
 * Herbaceous vegetation
 *
 * Closed to open (>15%) herbaceous vegetation (grassland, savannas or lichens/mosses)
 *
 * This is scattered throughout the southern california area, at the borders
 * of the forest areas.
 *
 * orig: rgb(255,180,50)
 */
@herb-veg: rgb(255,180,50);

/**
 * 150
 * Sparse vegetation
 *
 * Sparse (<15%) vegetation
 *
 * Sprinkled along the coast
 *
 * orig: rgb(255,235,175)
 */
@sparse-veg: rgb(255,235,175);

/**
 * 160
 * Forest regularly flooded
 *
 * Closed to open (>15%) broadleaved forest regularly flooded (semi-permanently or temporarily) - Fresh or brackish water
 *
 * Barely apparent throughout the dry western part of SoCal
 *
 * color: #46533f
 * orig: rgb(0,120,90)
 */
@forest-flooded-reg: rgb(0,120,90);

/**
 * 170
 * Forest permanently flooded
 *
 * Closed (>40%) broadleaved forest or shrubland permanently flooded - Saline or brackish water
 *
 * Barely present. Only shows up at the northern end of the Gulf of California
 * in Mexico.
 *
 * color: #46533f
 * orig: rgb(0,150,120)
 */
@forest-flooded-perm: rgb(0,150,120);

/**
 * 180
 * Grassland - NOT PRESENT
 *
 * Closed to open (>15%) grassland or woody vegetation on regularly flooded or waterlogged soil - Fresh, brackish or saline water
 *
 * Very rare, but does show up in single pixels at times.
 *
 * color: #6b7e60
 * orig: rgb(0,220,130)
 */
@grassland: rgb(0,220,130);

/**
 * 190
 * Urban areas
 *
 * Artificial surfaces and associated areas (Urban areas >50%)
 *
 * San Diego, Los Angeles
 *
 * orig: #e2bf58
 * mapbox: #E2D9D0
 * gmap: #E6DFD3
 */
/*@urban: #666;*/
@urban: #E6DFD3;

/**
 * 200
 * Bare Areas
 *
 * Barely apparent throughout the dry western part of SoCal
 *
 * orig: rgb(255,245,215)
 */
@bare-areas: rgb(255,245,215);

/**
 * 210
 * Water
 *
 * color: @wetlands
 */
@water: @wetlands;

/**
 * 220
 * Snow
 *
 * Permanent snow and ice
 *
 * Barely present. Only in some high places
 *
 * color: #fff
 */
@snow: #fff;

#land-cover {
  /* Commented out for development */
  raster-scaling:gaussian;
  raster-opacity: .5;
  raster-colorizer-default-mode:linear;
  raster-colorizer-default-color: transparent;
  raster-colorizer-epsilon:0.41;
  raster-colorizer-stops:
    stop(0,transparent,linear)
    stop(14,@rainfed-cropland)
    stop(20,@mosaic-cropland)
    stop(30,@mosaic-vegetation)
    stop(40,@mixed-broadleaved-forest)
    stop(50,@closed-decid-forest)
    stop(60,@open-decid-forest)
    stop(70,@closed-forest)
    stop(90,@open-forest)
    stop(100,@mixed-needle-forest)
    stop(110,@mosaic-forest)
    stop(120,@mosaic-grassland)
    stop(130,@shrubland)
    stop(140,@herb-veg)
    stop(150,@sparse-veg)
    stop(160,@forest-flooded-reg)
    stop(170,@forest-flooded-perm)
    stop(180,@grassland)
    stop(190,@urban)
    stop(200,@bare-areas)
    stop(210,@water)
    stop(220,@snow)
    stop(230,@no-data)
}

/**
 *****************************************************************************
 * Component specific data
 *****************************************************************************
 */

/**
 * Torrey Pines
 *
 * TODO which is the park and which is the species extent?
 */
#torreypines {
  line-width:0;
  polygon-opacity:1;
  polygon-fill:#59a84e;
  /*polygon-fill:#3c5139;*/
  /*polygon-fill:#23c406;*/
  /*polygon-fill:#69813a;*/
  /*polygon-fill:#ae8;*/
  line-join: round;
  line-cap: round;
}

#pinutorrwgs84 {
  line-color:#594;
  line-width:0.5;
  polygon-opacity:1;
  polygon-fill:#ae8;
}

#pinutorrwgs84 {
  line-width:0;
  polygon-opacity:.9;
  polygon-fill:#225a40;
}

#floristicprovinces {
  line-color:#594;
  line-width:0.5;
  polygon-opacity:.5;
  polygon-fill:#ae8;
}
