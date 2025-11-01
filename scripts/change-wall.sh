#!/usr/bin/env python3

import argparse as ap
from time import sleep
import random
import os

parser = ap.ArgumentParser()
parser.add_argument("path")
args = parser.parse_args()

walls = []
path = args.path

# start hyprpaper
os.system("hyprpaper &")

def load_walls():
  for wall in os.listdir(args.path):
    walls.append(wall)

load_walls()

while True:
  rand_wall = random.randint(0, len(walls) - 1)

  # set the wallpaper 
  os.system(f'hyprctl hyprpaper reload ,"{path}/{walls[rand_wall]}"')

  sleep(300)

  # remove used wallpaper so it does not show again 
  walls.pop(rand_wall)

  if len(walls) == 0: 
    load_walls()
