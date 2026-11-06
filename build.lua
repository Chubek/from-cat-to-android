-- A small Lua entry point; latexmk owns the bibliography/index rerun logic.
local action = arg[1] or 'book'
local commands = {
  book = 'latexmk from-cat-to-android.ltx',
  check = 'python3 scripts/check-manuscript.py',
  clean = 'latexmk -C from-cat-to-android.ltx',
}
if not commands[action] then
  io.stderr:write('Usage: texlua build.lua [book|check|clean]\n')
  os.exit(2)
end
local ok = os.execute(commands[action])
os.exit((ok == true or ok == 0) and 0 or 1)
