screens = {
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
  [40] = "down"
}
