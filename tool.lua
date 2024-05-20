Tools = {
  PEN = 1, 
  ERASER = 2,
  SELECTION = 3, 
  VERTICAL_SPACE = 4, 
}

Pen_tools = {
  DEFAULT = 1,
  RECTANGLE = 2.
}

function use_hand_drawing()
  app.uiAction({["action"] = "ACTION_TOOL_PEN"})
  app.uiAction({["action"] = "ACTION_TOOL_DRAW_RECT", ["enabled"] = false})

  currentTool = Tools.PEN
  currentPenTool = Pen_tools.DEFAULT

  -- app.uiAction({["action"] = "ACTION_TOOL_DEFAULT"})
  use_color(currentColor)
end

function use_eraser()
  if (currentTool == Tools.ERASER) then
    use_hand_drawing()
  else
    currentTool = Tools.ERASER
    app.uiAction({["action"] = "ACTION_TOOL_ERASER"})
  end
end

function use_rectangle_select()
  if (currentTool == Tools.SELECTION) then
    use_hand_drawing()
  else
    currentTool = Tools.SELECTION
    app.uiAction({["action"] = "ACTION_TOOL_SELECT_RECT"})
  end
end

function use_vertical_space()
  if (currentTool == Tools.VERTICAL_SPACE) then
    use_hand_drawing()
  else
    currentTool = Tools.VERTICAL_SPACE
    app.uiAction({["action"] = "ACTION_TOOL_VERTICAL_SPACE"})
  end
end

function use_draw_rectangle()
    currentTool = Tools.PEN
    currentPenTool = Pen_tools.RECTANGLE
    app.uiAction({["action"] = "ACTION_TOOL_PEN"})
    app.uiAction({["action"] = "ACTION_TOOL_DRAW_RECT"})
end