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
sleep(1)

def load_walls():
  for wall in os.listdir(args.path):
    walls.append(wall)

def set_wall():
  rand_wall = random.randint(0, len(walls) - 1)
  wall_path = f"{args.path}/{walls[rand_wall]}"

  os.system(f'hyprctl hyprpaper reload ,"{wall_path}"')
  walls.pop(rand_wall)

  if len(walls) == 0: 
    load_walls()

load_walls()
set_wall()

while True:
  sleep(300)

  set_wall()

