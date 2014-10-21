require("naughty")

-- Change current keyboard language

local keyboard_language = {}

keyboard_language.cmd = "setxkbmap"

keyboard_language.layout = {
	"us",
	"lt"
}

keyboard_language.current = 1

keyboard_language.change_language = function()
	keyboard_language.current = keyboard_language.current % #(keyboard_language.layout) + 1

	os.execute(keyboard_language.cmd .. " " ..
		keyboard_language.layout[keyboard_language.current])

	naughty.notify({
		title = "Language settings:",
		text = "Current language: " .. keyboard_language.layout[keyboard_language.current],
		screen = mouse.screen,
		timeout = 1
	})
end

return keyboard_language

