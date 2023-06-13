//this just makes easier to append values to an array
setOption("ExpandableArrays", true);


///////HERE WE SET THE VALUES FOR THE EXPERIMENT!!!!!!!!!

//set the radius for the smallest box in pixels
minimumbox = 15;
//set the radius for the biggest box in percentage of the pixels in the image
maxbox = 45;
//set the number of trials to measure lacunarity
trials = 50;
//set the biggest box's size in pixels
imagewidth = getWidth();
imageheight = getHeight();
maxwidth = round(imagewidth*maxbox/100);
maxheight = round(imageheight*maxbox/100);
//set the size of the differences between trials and the width and height of the boxes of the current trial
steps_width = floor((maxwidth-minimumbox)/trials);
steps_height = floor((maxheight-minimumbox)/trials);
currentwidth = minimumbox;
currentheight = minimumbox;
//this for increases the width and height of the box after each trial. Before we start the loop, we initialize the position of the box on 0,0
boxposition_x = 0;
boxposition_y = 0;
lacunarity = newArray;
for (i = 0; i < trials+1; i++) {
	//this for moves the position of the box through the y axis
	boxnumber = 0;
	//here we initialize the array where we will store the percentage of the area that is positive in each box. change_y is the number of pixels that the box will slide in the y axis.
	positivearea = newArray;
	change_y = floor(currentheight/4);
	change_x = floor(currentwidth/4);
	for(boxposition_y = 0; boxposition_y<imageheight;boxposition_y+=change_y){
		if(imageheight-boxposition_y<10){break;}
		//this for moves the position of the box through the x axis. It always starts at position = 0
		for(boxposition_x = 0; boxposition_x<imagewidth;boxposition_x+=change_x){
				//this while moves the cursor within the box through the y axis and stops where the box (or image)ends
				if(imagewidth-boxposition_x<10){break;}
				cursor_y = boxposition_y;
				positivepixel = 0;
				while (cursor_y<(boxposition_y+currentheight)&&cursor_y<imageheight) {
					cursor_y++;
					cursor_x = boxposition_x;
					//this while moves the cursor within the box through the x axis and stops where the box (or image)ends
					//whenever it finds a non-zero pixel it counts it
					while (cursor_x<(boxposition_x+currentwidth)&&cursor_x<imagewidth){
						cursor_x++;
						if(getPixel(cursor_x, cursor_y)>0){positivepixel++;}
					}
				}
				//Here the entire box has been explored, and the percentage of positive pixels in the box recorded.
				//For that, the area of the box is calculated (the area of a rectangle is height*width, but if the 
				//box touches the edge of the image, we have to adjust the area, that is why we check if the box touches the edge of the image)
				boxheight = currentheight;
				boxwidth = currentwidth;
				if(boxposition_x + currentwidth>imagewidth){boxwidth = imagewidth-boxposition_x-1;}
				if(boxposition_y + currentheight > imageheight){boxheight = imageheight-boxposition_y-1;}
				//in this array we store the percentage of positive pixels of each box and check which number of box within the current trial (i) we are in
				positivearea[boxnumber] = positivepixel/(boxheight*boxwidth);
				boxnumber++;
			}
		}
		currentwidth += steps_width;
		currentheight += steps_height;
		//here we get the mean (3) and standard deviation (4) of the positive area in the entire image and calculate the lacunarity with that box size. Then, we get the average lacunarity.
		mean = 0;
		st = 0;
		for(w=0;w<positivearea.length;w++){
			mean += positivearea[w];
			}
			mean = mean/positivearea.length;
		for(w=0;w<positivearea.length;w++){
			st += (positivearea[w]-mean)^2;
			}
			st = sqrt(st/(positivearea.length-1));
			lacunarity[i] = st/mean;
	}
result = 0;
nonzero = 0;
for (i = 0; i < lacunarity.length; i++) {
	result += lacunarity[i];
	if(lacunarity[i] > 0){nonzero++;}
}
print(result/nonzero,"for image", getTitle());