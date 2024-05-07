screens = {
  -- https://www.jimblimey.com/blog/attack-of-the-clones-space-invaders/
  screen1 = {
    image = "images/spaceinvaders1.png",
    right = "screen2"
  },
  screen2 = {
    image = "images/spaceinvaders2.png",
    left = "screen1",
    down = "screen3"
  },
  screen3 = {
    image = "images/spaceinvaders3.png",
    up = "screen2"
  }
}

screen = "screen1"

keys = {
  [37] = "left",
  [38] = "up",
  [39] = "right",
  [40] = "down",
  [49] = 1,
  [50] = 2,
  [51] = 3,
  [65] = "A",
  [66] = "B",
  [67] = "C",
  [68] = "down",
  [76] = "left",
  [82] = "right",
  [85] = "up"
}
