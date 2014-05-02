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
  marker-width:10;
  marker-fill:@attic;
  marker-line-color:#FFF;
  marker-line-width:1;
  marker-allow-overlap:true;
}

#states {
  line-color:#000;
  line-width:1;
  polygon-opacity:0;
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
  /*raster-opacity: 0.8;*/
}

#color {
  raster-scaling: bilinear;
  raster-comp-op: multiply;
}

#urban-areas {
  line-color:#000;
  line-width:5;
  polygon-fill:#000;
  polygon-opacity:0;
  image-filters: agg-stack-blur(5,5);
}
