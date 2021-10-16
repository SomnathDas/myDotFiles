
Config { font = "xft:Ubuntu:weight=bold:pixelsize=12:antialias=true:hinting=true"
       , additionalFonts = [ "xft:Mononoki:pixelsize=12:antialias=true:hinting=true"
                           , "xft:Font Awesome 5 Free Solid:pixelsize=13"
                           , "xft:Font Awesome 5 Brands:pixelsize=13"
                           ]
       , bgColor      = "#000000"
       , fgColor      = "#CAEAF5"
       , alpha = 175 -- transparency moment
       , position       = TopSize L 100 24
       , lowerOnStart = True
       , hideOnStart  = False
       , allDesktops  = False
       , persistent   = True
       , iconRoot     = ".xmonad/xmobar/"  -- default: "."
       , commands = [
		   Run Wireless "wlp0s29u1u5" [ "-t", "<essid>:" ] 10 -- type iwconfig to get your "wlp0s29u1u5" stuff and replace that with yours
		 , Run DynNetwork     [ "--template" , "<tx>kB/s|<rx>kB/s"
                             , "--Low"      , "1000"       -- units: B/s
                             , "--High"     , "5000"       -- units: B/s
                             , "--low"      , "lightblue"
                             , "--normal"   , "white"
                             , "--high"     , "red"
                             ] 10
            , Run MultiCpu       [ "--template" , "Cpu: <total0>%|<total1>%"
                             , "--Low"      , "50"         -- units: %
                             , "--High"     , "85"         -- units: %
                             , "--low"      , "lightblue"
                             , "--normal"   , "white"
                             , "--high"     , "red"
                             ] 10
	    , Run Memory ["-t", "<fn=2>\xf233</fn>  mem: <used>M (<usedratio>%)"] 20
	    , Run Battery ["-t", "<fn=2>\xf240</fn> <acstatus>: <left>%", "--", "-i", "acp", "-O", "chr", "-o", "bat" , "-L", "20", "--low", "red"] 10
            , Run Date "<fn=2>\xf017</fn> %b %d %Y - %H:%M" "date" 50
            , Run Com "/home/somnath/.xmonad/script/trayer-padding-icon.sh" [] "trayerpad" 20
            , Run UnsafeStdinReader 
	    
        ]
       , sepChar = "%"
       , alignSep = "}{"
       , template = " <icon=arch-linux-icon_24.xpm/>  <fc=#666666>|</fc> %UnsafeStdinReader% }{ <fc=#ffffff>%wlp0s29u1u5wi%</fc> <fc=#F9F9F9>%dynnetwork%</fc> <fc=#666666>|</fc> <fc=#05ACD9>%multicpu%</fc> <fc=#666666>|</fc> <fc=#34ebc0>%memory%</fc> <fc=#666666>|</fc> <fc=#F9F9F9>%battery%</fc> <fc=#666666>|</fc> <fc=#1BD6E9>%date%</fc>"
       }
