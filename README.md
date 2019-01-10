# Master the pipes

Masters the pipes is a game inspired by plumbing games which there is a starting point and an ending point and by rotating the pipes the user should solve the puzzel by connecting the pipes from the starting point to the ending point. This project is designed for [SWORD board] (http://www.sword.org.cn) which is primarily based on Xilinx Kintex™-7.

[Similar Game](http://www.minigamers.com/games/plumber~2850/)

# Graphics
 
All the graphics of the game are available in the assests folder, in there you can find a python script where you can run it by executing the following commands:

'''
convert.py --image_location --text_location --number_of_red_bits --number_of_blue_bits --number_of_green_bits --size_of_out
'''

For example:

'''
convert.py --assets --assets --3 --3 --3 --12
'''

The python script gets an input picture/directory of images and outputs their corresponding pixel values according to the specficiations in the desired folder.

For our purposes, we did 4 bits for red, 4 bits for green and 4 bits for blue. Each board has its own specification.

In the resources directory you can find more resources about how to display images on the FPGA using verilog. 


# Resources

Resources folder should include a pdf that explains how to work with displays using Verilog, another document explaining how to use inputs from an external keyboard and memory allocation using 
