import numpy as np
import cv2 as cv
import glob
from sys import argv
if (argv[1]):
    if (argv[1]=='help'):
        raise Exception("arguments should be given as follows: image_location text_location number_of_red_bits number_of_blue_bits number_of_green_bits hex_or_binary")
if len(argv) != 7:
    raise Exception("not enough arguments, arguments should be inputted as follows:\n image_location text_location number_of_red_bits number_of_blue_bits number_of_green_bits hex_or_binary")
img_loc = argv[1]
file_loc = argv[2]
red_bits = argv[3]
green_bits = argv[5]
blue_bits = argv[4]
is_hex = argv[6]
for filenames in glob.glob(img_loc+"/*.*"):
    if (filenames[-3:].lower() == "jpg" or filenames[-3:].lower() == "png"):
        rgb = []
        raw_rgb = cv.imread(filenames)
        for i, w in enumerate(raw_rgb):
            for j, h in enumerate(w):
                r = hex(int(h[0]/2**(8 - int(red_bits)))
                g = int(h[1]/2**(8 - int(green_bits)))
                b = int(h[2]/2**(8 - int(blue_bits)))
                rgb_val = r + (g<<(int(red_bits))) + (b<<(int(green_bits)+int(red_bits)))
                print(r, g, b, rgb_val, hex(rgb_val))
                if (is_hex == "h"):
                    rgb_val = hex(rgb_val).split('x')[-1]
                else:
                    rgb_val = bin(rgb_val).split('b')[-1]
        with open(file_loc + "/" +filenames.split('/')[-1][:-3] + "txt", "w") as f:
            for i, val in enumerate(rgb):
                if (i == len(rgb)-1):
                    f.write(val)
                else:
                    f.write(val + ", ")
            f.close()
