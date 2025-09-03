if Partner_API then
        
SMODS.Atlas {
    key = "partners",
    path = "partners_atlas.png",
    px = 46,
    py = 58
}

local function load_partners_folder()
    local mod_path = SMODS.current_mod.path
    local vouchers_path = mod_path .. "/content/partners"
    local files = NFS.getDirectoryItemsInfo(vouchers_path)
    for i = 1, #files do
        local file_name = files[i].name
        if file_name:sub(-4) == ".lua" then
            assert(SMODS.load_file("content/partners/" .. file_name))()
        end
    end
end

load_partners_folder()

end