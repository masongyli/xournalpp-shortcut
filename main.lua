require("tool")
require("color")
require("util")

function initUi()
  -- tools
  app.registerUi({["menu"] = "Hand drawing", ["callback"] = "use_hand_drawing", ["accelerator"] = "f"}); -- "f" for freehand
  app.registerUi({["menu"] = "Eraser", ["callback"] = "use_eraser", ["accelerator"] = "d"});
  app.registerUi({["menu"] = "Select using a rectangle ", ["callback"] = "use_rectangle_select", ["accelerator"] = "s"}); -- "s" for select
  app.registerUi({["menu"] = "Insert vertical space", ["callback"] = "use_vertical_space", ["accelerator"] = "v"}); -- "v" for vertical space
  app.registerUi({["menu"] = "Rectangle", ["callback"] = "use_draw_rectangle", ["accelerator"] = "<Shift>r"}); -- "r" for "rectangle"
  
  -- colors
  app.registerUi({["menu"] = "Use color black", ["callback"] = "use_color_black", ["accelerator"] = "w"});
  app.registerUi({["menu"] = "Use color blue", ["callback"] = "use_color_blue", ["accelerator"] = "e"});
  app.registerUi({["menu"] = "Use color red", ["callback"] = "use_color_red", ["accelerator"] = "r"}); -- "r" for red
  -- app.registerUi({["menu"] = "Use color orange", ["callback"] = "use_color_orange", ["accelerator"] = "b"});
  app.registerUi({["menu"] = "Use color green", ["callback"] = "use_color_green", ["accelerator"] = "b"});

  app.registerUi({["menu"] = "Use color brown", ["callback"] = "use_color_brown", ["accelerator"] = "1"});
  app.registerUi({["menu"] = "Use color purple", ["callback"] = "use_color_purple", ["accelerator"] = "2"});
  app.registerUi({["menu"] = "Use color light blue", ["callback"] = "use_color_light_blue", ["accelerator"] = "3"});
  app.registerUi({["menu"] = "Use color light green", ["callback"] = "use_color_light_green", ["accelerator"] = "4"});

  -- pages
  app.registerUi({["menu"] = "Add a new page after the current page", ["callback"] = "add_new_page_after_current_page", ["accelerator"] = "t"});
  app.registerUi({["menu"] = "Add a new page before the current page", ["callback"] = "add_new_page_before_current_page", ["accelerator"] = "<Shift>t"});
  app.registerUi({["menu"] = "Delete current page", ["callback"] = "delete_current_page", ["accelerator"] = "q"});

  -- navigation
  app.registerUi({["menu"] = "Go to next page", ["callback"] = "goto_next_page", ["accelerator"] = "<Shift>x"});
  app.registerUi({["menu"] = "Go to previous page", ["callback"] = "goto_previous_page", ["accelerator"] = "<Shift>z"});
  app.registerUi({["menu"] = "Scroll down", ["callback"] = "scroll_down", ["accelerator"] = "x"});
  app.registerUi({["menu"] = "Scroll up", ["callback"] = "scroll_up", ["accelerator"] = "z"});

  -- common utilities
  app.registerUi({["menu"] = "Undo", ["callback"] = "undo", ["accelerator"] = "a"});
  app.registerUi({["menu"] = "Redo", ["callback"] = "redo", ["accelerator"] = "<Shift>a"});
  app.registerUi({["menu"] = "Delete the selected strokes", ["callback"] = "delete_selected_objects", ["accelerator"] = "c"});  -- "c" for clear
  
end


---- initialization ---------------------------------------------------------------------------

-- global variables: currentTool, currentPenTool, currentColor

-- initial tool
use_hand_drawing()

-- initial color
use_color_black()

-- initial view
app.uiAction({["action"] = "ACTION_ZOOM_FIT"})
