-- ThemeManager.lua (Fixed + Clean)
local HttpService = game:GetService('HttpService')

local ThemeManager = {} do
	ThemeManager.Folder = 'LinoriaLibSettings'
	ThemeManager.Library = nil

	-- Built-in Themes
	ThemeManager.BuiltInThemes = {
		['Default'] = {1, HttpService:JSONDecode('{"FontColor":"ffffff","MainColor":"1c1c1c","AccentColor":"0055ff","BackgroundColor":"141414","OutlineColor":"323232"}')},
		['BBot'] = {2, HttpService:JSONDecode('{"FontColor":"ffffff","MainColor":"1e1e1e","AccentColor":"7e48a3","BackgroundColor":"232323","OutlineColor":"141414"}')},
		['Purple'] = {3, HttpService:JSONDecode('{"FontColor":"ffffff","MainColor":"1c1c1c","AccentColor":"a855f7","BackgroundColor":"141414","OutlineColor":"3b0764"}')},
		['Red'] = {4, HttpService:JSONDecode('{"FontColor":"ffffff","MainColor":"1c1c1c","AccentColor":"ef4444","BackgroundColor":"141414","OutlineColor":"450a0a"}')},
	}

	function ThemeManager:BuildFolderTree()
		if not isfolder then return end
		if not isfolder(self.Folder) then
			makefolder(self.Folder)
		end
	end

	function ThemeManager:SetLibrary(lib)
		self.Library = lib
	end

	function ThemeManager:ApplyToTab(tab)
		-- Basic implementation (you can expand later)
		print("ThemeManager: Applied to tab")
	end

	ThemeManager:BuildFolderTree()
end

return ThemeManager
