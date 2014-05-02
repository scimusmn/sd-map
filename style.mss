@riparian: #69813A;
@mountains: #08292F;
@torrey-pines: #225A40;
@understanding-change: #A75928;
@attic: #663233;
@desert: #225A40;
@wetlands: #527193;
@sd-background: #E2D9C2;

Map {
  background-color: #b8dee6;
  background-color: #ff0000;
  background-color: #FFF;
}

#countries {
  ::outline {
    /*line-color: #85c5d3;*/
    line-color: #000000;
    line-width: 3;
    line-join: round;
  }
  polygon-fill: #fff;
}


#hillshades,
#slopes,
#ne2hrlcsrwdr3785 {
  raster-scaling: bilinear;
  raster-comp-op: multiply;
}

#hillshades {
  raster-opacity: 0.6;
}

#slopeshades {
  raster-opacity: 0.1;
}

#color {
  raster-scaling: bilinear;
  raster-comp-op: multiply;
}

#ocean {
  line-color:#594;
  line-width:0.5;
  polygon-opacity:1;
  polygon-fill:#527193;
}

#urban-areas {
  line-width:0;
  polygon-fill:#fff;
  polygon-opacity:.2;
  image-filters: agg-stack-blur(1,1);
}

#pop-places-points {
  text-name: [NAME];
  text-face-name: 'Futura Medium';
  text-size: 16;
  text-fill: #222;
  text-wrap-width: 60;
  text-wrap-before: true;
  text-halo-radius: 1.5;
  text-halo-fill: #fff;
  text-min-distance: 2;
  text-placement-type: simple;
  text-dx: 10;
  text-dy: 10;
  text-placements: 'NE';
  marker-width:6;
  marker-fill:#f45;
  marker-line-color:#813;
  marker-allow-overlap:true;
}


#states {
  line-color:#000;
  line-width:1;
  polygon-opacity:0;
}