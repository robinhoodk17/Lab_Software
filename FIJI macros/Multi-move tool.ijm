macro "MultiRoiMove Tool - C00cT0f16M" {
  if (RoiManager.selected<2) exit(); 
  indexes=split(call("ij.plugin.frame.RoiManager.getIndexesAsString"));
  roiManager("Combine");
  getCursorLoc(x, y, z, modifiers);
  Roi.getBounds(x0, y0, width, height);
  while(modifiers&16>0) {
    getCursorLoc(x1, y1, z, modifiers);
    Roi.move(x0+x1-x, y0+y1-y);
  }
  roiManager("select", indexes);
  roiManager("translate", x1-x, y1-y);
}