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
  background-color: #FFF

}

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

#ocean {
  polygon-fill:@wetlands;
  /*polygon-fill:#97adc5;*/
  line-color:#b1cdeb;
  /*line-color:#6e97c4;*/
  line-width:1;
  line-join: round;
}

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

/**
 * County boundaries
 */

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

#urban-areas {
  polygon-fill:black;
  polygon-opacity:.3;
  /*image-filters: agg-stack-blur(5, 5);*/
}


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

/*#i5 {*/
  /*[length = 1391.39] {*/
    /*text-name: [prefix] + ' -' + [number];*/
    /*text-face-name: 'Futura Medium';*/
    /*text-size: 14;*/
    /*text-fill: #222;*/
    /*text-halo-radius: 1.5;*/
    /*text-halo-fill: #fff;*/
    /*text-placement: line;*/
  /*}*/
/*}*/

/*#i15 {*/
  /*[uident = 6133] {*/
    /*text-name: [prefix] + ' -' + [number];*/
    /*text-face-name: 'Futura Medium';*/
    /*text-size: 14;*/
    /*text-fill: #222;*/
    /*text-halo-radius: 1.5;*/
    /*text-halo-fill: #fff;*/
    /*text-placement: line;*/
  /*}*/
/*}*/

/*#i8,*/
/*#i10 {*/
    /*text-name: [prefix] + ' -' + [number];*/
    /*text-face-name: 'Futura Medium';*/
    /*text-size: 14;*/
    /*text-fill: #222;*/
    /*text-halo-radius: 1.5;*/
    /*text-halo-fill: #fff;*/
    /*text-placement: line;*/
/*}*/


#colorcustomv03 {
  raster-opacity:1;
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


#50m {
  line-width:1;
  line-color:green;
}
