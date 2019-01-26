//change size of player when collecting a heart and destroy instance
image_xscale = min(image_xscale + 0.05, 2);
image_yscale = image_xscale;

instance_create_layer(100,100, "Layer_Item", obj_resizer);
