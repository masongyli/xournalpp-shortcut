-- page management
function delete_current_page()
  app.uiAction({["action"] = "ACTION_DELETE_PAGE"})
end

function add_new_page_after_current_page()
  app.uiAction({["action"] = "ACTION_NEW_PAGE_AFTER"})
  app.changeCurrentPageBackground("graph", "f1=0xdddddd,r1=14.17,lw=0.5")
end

function add_new_page_before_current_page()
  app.uiAction({["action"] = "ACTION_NEW_PAGE_BEFORE"})
  app.changeCurrentPageBackground("graph", "f1=0xdddddd,r1=14.17,lw=0.5")
end


-- navigation
scrollDistanceInPt = 100

function scroll_down()
  app.scrollToPos(0, scrollDistanceInPt)
end

function scroll_up()
  app.scrollToPos(0, -scrollDistanceInPt)
end

function goto_next_page()
  app.uiAction({["action"] = "ACTION_GOTO_NEXT"})
end

function goto_previous_page()
  app.uiAction({["action"] = "ACTION_GOTO_BACK"})
end


-- common utilities
function undo()
  app.uiAction({["action"] = "ACTION_UNDO"})
end

function redo()
  app.uiAction({["action"] = "ACTION_REDO"})
end

function delete_selected_objects()
  app.uiAction({["action"] = "ACTION_DELETE"})
end