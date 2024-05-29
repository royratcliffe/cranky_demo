screens = {
  alert_popup_page = {
    image = "images/Alert_Popup_Page.jpg",
    right = "home_page_1",
    battery = false,
  },

  home_page_1 = {
    battery = true,
    left = "alert_popup_page",
    image = "images/Home_Page (1).jpg",
    right = "button_page",
  },

  button_page = {
    left = "home_page_1",
    image = "images/Button_Page.jpg",
    right = "button_page_1",
  },
  button_page_1 = {
    left = "button_page",
    image = "images/Button_Page (1).jpg",
    right = "button_pages",
  },
  button_pages = {
    left = "button_page_1",
    image = "images/Button_Pages.jpg",
    right = "numerical_keyboard_screen",
    battery = true,
  },

  numerical_keyboard_screen = {
    battery = false,
    left = "button_pages",
    image = "images/Numerical Keyboard Screen.jpg",
    right = "numerical_keyboard_screen_1",
  },
  numerical_keyboard_screen_1 = {
    left = "numerical_keyboard_screen",
    image = "images/Numerical Keyboard Screen (1).jpg",
    right = "numerical_keyboard_screen_3",
  },
  -- Numerical keyboard screen (2) duplicates (1). Skip it.
  numerical_keyboard_screen_3 = {
    left = "numerical_keyboard_screen_1",
    image = "images/Numerical Keyboard Screen (3).jpg",
    right = "keyboard_screen",
  },

  keyboard_screen = {
    left = "numerical_keyboard_screen_3", image = "images/Keyboard Screen.jpg", right = "keyboard_screen_1",
  },
  keyboard_screen_1 = {
    left = "keyboard_screen", image = "images/Keyboard Screen (1).jpg", right = "keyboard_screen_2",
  },
  keyboard_screen_2 = {
    left = "keyboard_screen_1", image = "images/Keyboard Screen (2).jpg", right = "numerical_keyboard_screen_4",
  },

  numerical_keyboard_screen_4 = {
    left = "keyboard_screen_2",
    image = "images/Numerical Keyboard Screen (4).jpg",
    right = "numerical_keyboard_screen_5",
  },
  numerical_keyboard_screen_5 = {
    left = "numerical_keyboard_screen_4",
    image = "images/Numerical Keyboard Screen (5).jpg",
    right = "numerical_keyboard_screen_6",
  },
  numerical_keyboard_screen_6 = {
    left = "numerical_keyboard_screen_5",
    image = "images/Numerical Keyboard Screen (6).jpg",
    right = "button_page_2",
    battery = false,
  },

  button_page_2 = {
    battery = true,
    left = "numerical_keyboard_screen_6",
    image = "images/Button_Page (2).jpg",
    right = "button_page_3",
  },
  button_page_3 = {
    left = "button_page_2",
    image = "images/Button_Page (3).jpg",
    right = "job_screen",
  },

  job_screen = {
    left = "button_page_3",
    image = "images/Job Screen.jpg",
    right = "job_screen_2",
    down = "job_screen_1",
  },
  job_screen_1 = {
    up = "job_screen", image = "images/Job Screen (1).jpg",
  },
  job_screen_2 = {
    left = "job_screen",
    image = "images/Job Screen (2).jpg",
    right = "job_screen_4",
    down = "job_screen_3",
  },
  job_screen_3 = {
    up = "job_screen_2", image = "images/Job Screen (3).jpg",
  },

  job_screen_4 = {
    left = "job_screen_2", image = "images/Job Screen (4).jpg", right = "list_page",
  },

  list_page = {
    left = "job_screen_4", image = "images/List _Page.jpg", right = "list_page_1",
  },
  list_page_1 = {
    left = "list_page", image = "images/List _Page (1).jpg", right = "list_page_2",
  },
  list_page_2 = {
    left = "list_page_1", image = "images/List _Page (2).jpg", right = "home_page_2",
  },

  home_page_2 = {
    left = "list_page_2",
    image = "images/Home_Page (2).jpg",
    right = "home_page_3",
  },
  home_page_3 = {
    left = "home_page_2",
    image = "images/Home_Page (3).jpg",
    up = "alert_popup_page",
  },

  screen = {
    left = "", image = "images/a.jpg", right = "",
  },
}

screen = "alert_popup_page"

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
