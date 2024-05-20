colors = {
  black = 0x000000,
  blue = 0x3333cc,
  red = 0xff0000,
  green = 0x008000,
  orange = 0xff8000,

  brown = 0x8f5902,
  purple = 0x75507b,
  light_blue = 0x729fcf,
  light_green = 0x73d216,
}

function changeColor(color)
  app.changeToolColor({["color"] = color, ["selection"] = true})
end

function use_color(color)
  currentColor = color

  local ran, errorMsg = pcall(changeColor, color)
  if not ran then -- "currentTool = Tools.SELECTION" and "nothing is selected"
    use_hand_drawing()
    app.changeToolColor({["color"] = color})
    -- error("Function errored on run " .. tostring(i) .. "\n" .. errorMsg)
  end
end

function use_color_black()
  use_color(colors["black"])
end

function use_color_blue()
  use_color(colors["blue"])
end

function use_color_red()
  use_color(colors["red"])
end

function use_color_green()
  use_color(colors["green"])
end

function use_color_orange()
  use_color(colors["orange"])
end

function use_color_brown()
  use_color(colors["brown"])
end

function use_color_purple()
  use_color(colors["purple"])
end

function use_color_light_blue()
  use_color(colors["light_blue"])
end

function use_color_light_green()
  use_color(colors["light_green"])
end