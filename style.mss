@riparian: #69813A;
@mountains: #08292F;
@torrey-pines: #225A40;
@understanding-change: #A75928;
@attic: #663233;
@desert: #225A40;
@wetlands: #527193;
@sd-background: #E2D9C2;

Map {
  /*background-color: #69813a;*/
  /*background-color: #e2d9c2;*/
  /*background-color: #b5b9ae;*/
  /*background-color: #AEAB9D*/
  background-color: #fff;
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
}

#hillshades,
#slopes {
  raster-scaling: bilinear;
  raster-comp-op: multiply;
}

#hillshades {
  raster-opacity: 0.6;
}

#slopes {
  raster-opacity: 1;
}

#us-mex,
#californiaeast {
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

#i5 {
  [length = 1391.39] {
    text-name: [prefix] + ' -' + [number];
    text-face-name: 'Futura Medium';
    text-size: 14;
    text-fill: #222;
    text-halo-radius: 1.5;
    text-halo-fill: #fff;
    text-placement: line;
  }
}

#i15 {
  [uident = 6133] {
    text-name: [prefix] + ' -' + [number];
    text-face-name: 'Futura Medium';
    text-size: 14;
    text-fill: #222;
    text-halo-radius: 1.5;
    text-halo-fill: #fff;
    text-placement: line;
  }
}

#i8,
#i10 {
    text-name: [prefix] + ' -' + [number];
    text-face-name: 'Futura Medium';
    text-size: 14;
    text-fill: #222;
    text-halo-radius: 1.5;
    text-halo-fill: #fff;
    text-placement: line;
}


#colorcustomv03 {
  raster-opacity:1;
}


#labels {
  text-name: [Label];
  text-face-name: 'Futura Medium';
  text-size: 32;
  text-fill: #DDD;
  text-opacity: .8;
  text-wrap-width: 60;
  text-wrap-before: true;
  text-halo-radius: 1.5;
  text-halo-fill: #666;
  text-min-distance: 2;
  text-placement-type: simple;
  text-dx: 10;
  text-dy: 10;
  text-placements: 'NE';
  marker-width:0;
}
