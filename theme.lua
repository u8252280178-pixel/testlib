-- ThemeManager.lua (unchanged, just pasted for completeness)
local httpService = game:GetService('HttpService')

local ThemeManager = {} do
	ThemeManager.Folder = 'LinoriaLibSettings'

	ThemeManager.Library = nil
	ThemeManager.BuiltInThemes = {
		['Default'] 		= { 1, httpService:JSONDecode('{"FontColor":"ffffff","MainColor":"1c1c1c","AccentColor":"0055ff","BackgroundColor":"141414","OutlineColor":"323232"}') },
		['BBot'] 			= { 2, httpService:JSONDecode('{"FontColor":"ffffff","MainColor":"1e1e1e","AccentColor":"7e48a3","BackgroundColor":"232323","OutlineColor":"141414"}') },
		-- ... (rest of built-in themes)
	}

	-- [All original ThemeManager functions remain unchanged]
	-- ... (full original code)

	function ThemeManager:SetLibrary(lib)
		self.Library = lib
	end

	ThemeManager:BuildFolderTree()
end

return ThemeManager
