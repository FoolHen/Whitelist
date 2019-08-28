local whitelistedNames = { --Add names here
	"FoolHen",
	"NoFaTe",
	"3ti65",
	"Powback",
	"kiwidog",
	"snaiperskaya",
	"",
	"",
	"",
	"",
	"",
	"",
	"",
	"",
	"",
	"",
	"",
	"",
	"",
	""
}

Hooks:Install('Player:RequestJoin', 100, function(hook, joinMode, accountGuid, playerGuid, playerName)
	for _, name in pairs(whitelistedNames) do
		if playerName:lower() == name:lower() then
			return
		end
	end

	hook:Return(false)

end)