local ok, fidget = pcall(require, "fidget")
if not ok then
    return
end

fidget.setup(
  {
    text = {
      spinner = "meter",         -- animation shown when tasks are ongoing
      done = "✔",               -- character shown when all tasks are complete
      commenced = "Started",    -- message shown when task starts
      completed = "Completed",  -- message shown when task completes
    },
    align = {
      bottom = false,           -- align fidgets along bottom edge of buffer
      right = true,             -- align fidgets along right edge of buffer
    },
    timer = {
      spinner_rate = 125,       -- frame rate of spinner animation, in ms
      fidget_decay = 2000,      -- how long to keep around empty fidget, in ms
      task_decay = 1000,        -- how long to keep around completed task, in ms
    },
    window = {
      relative = "win",         -- where to anchor, either "win" or "editor"
      blend = 100,              -- &winblend for the window
      zindex = nil,             -- the zindex value for the window
      border = "rounded",          -- style of border for the fidget window
    },
    fmt = {
      leftpad = true,           -- right-justify text in fidget box
      stack_upwards = false,     -- list of tasks grows upwards
      max_width = 0,            -- maximum width of the fidget box
      fidget =                  -- function to format fidget title
      function(fidget_name, spinner)
        return string.format("%s %s", spinner, fidget_name)
      end,
      task =                    -- function to format each task line
      function(task_name, message, percentage)
        return string.format(
        "%s%s [%s]",
        message,
        percentage and string.format(" (%s%%)", percentage) or "",
        task_name
        )
      end,
    },
    debug = {
      logging = false,          -- whether to enable logging, for debugging
      strict = false,           -- whether to interpret LSP strictly
    },
  }
)