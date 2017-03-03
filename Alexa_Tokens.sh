#!/bin/bash

#This script is designed to work 
#alongside my other script which is 
#modified from the script written by 
#Misperry https://youtu.be/iwlQnRHX9Ms 
#all credit to him for the other 
#script, I've only made a few small edits.

# This script automates the process of 
#logging in etc prior to pressing 
#'spacebar' in Misperry's script.
#It also automated the spacebar making the whole thing automated.

#THIS WILL NOT WORK ON A HEADLESS INSTALL - IT NEEDS A PHYSICAL MOUSE ATTACHED AND A MONITOR. I'M USING IT ON A SMART MIRROR WITH USB MOUSE HIDDEN BEHIND IT TO ALLOW THIS TO WORK - I KNOW OF NO OTHER WORK AROUND.


#Change coordinate numbers of each 
#mouse move to suit where your 
#windows pop up on the desktop.

#Moves mouse over the 'Yes' Button of the default browser request pop up.
xdotool mousemove --sync 1000 10
#mouse left click on 'Yes' Button.
xdotool click 1
#Waits for browser to open 30 seconds is enough time for my Pi Model 2 change as you see fit.
sleep 30
#Activates the window which contains search word 'Chromium' and places mouse in top corner of window. This means that if you move the default window location the rest of the script will still work in the future, if we use relative movements:

xdotool search “Chromium” windowactivate --sync mousemove

#Move curser relative to 0 0 (top corner of window) to the point where your log in button is -- save your login details manually so you only have to click the yellow log in button

xdotool mousemove_relative --sync 0 80

# clicks log in button

xdotool click 1

#wait for the log in and token approval

sleep 5

#Close chromium window down

xdotool windowkill `xdotool getactivewindow`

#activate the OK button window that initially popped up.

xdotool search “Information” windowactivate --sync mousemove

#Move mouse over OK button

xdotool mousemove_relative --sync 0 80

# clicks OK button

xdotool click 1

#Move to terminal

xdotool search “terminal” windowactivate --sync mousemove

sleep 2 

#Press spacebar and finish auto start Alexa

xdotool key space