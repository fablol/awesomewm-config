local apps = {
    launcher = "rofi -show-icons -modi windowcd,window,drun -show drun -filter ",
    xrandr = "lxrandr",
    screenshot = "scrot -e 'echo $f'",
    volume = "pavucontrol",
    appearance = "lxappearance",
    browser = "firefox-developer-edition",
    fileexplorer = "dolphin",
    musicplayer = "pragha",
    settings = "code /home/box/.config/awesome/"
}

local terminal_cmds = {
    {
      cmd = 'journalctl -n 15 --no-pager -u "systemd-*"'
    },
    {
      cmd = 'journalctl -n 30 --no-pager'
    },
    {
      cmd = 'notes_sync',
      timeout = 100000
    },
    {
      cmd = 'ls'
    },
    {
      cmd = 'sh chat-gpt "Describe cons and pros of awesomewm." 1.0',
      timeout = 100000
    },
    {
      cmd = 'sh chat-gpt "${input}" 1.0',
      timeout = 100000,
      prompt = 'Enter question for chat-gpt:'
    },
    {
      cmd = 'echo "${input}"',
      prompt = 'Enter text for echo:'
    }
}

local user = {
    terminal = "alacritty",
    terminal2nd = "wezterm",
}

local config = {
  apps = apps,
  user = user,
  terminal_cmds = terminal_cmds,
  weather_coordinates = { '31.377756', '121.2606119' },
  dashboard_monitor_storage = {"/", "/home", "/efi" },
  main_panel = 'wibar', -- variants: wibar, polybar, none
  --{{{ Features Activity
  dashboard_enabled = true,
  --}}}
}

return config
