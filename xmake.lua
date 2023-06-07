add_rules("mode.debug")




rule("compile", function()
  on_build(function(target)
    local sourcefiles = target:sourcebatches()["asm.build"]["sourcefiles"]
    -- print(target:scriptdir()) -- 目录
    for _, value in ipairs(sourcefiles) do
      os.exec("nasm ./%s -o ./%s.bin", value, value)
    end
  end)
end)

target("build", function()
  add_rules("compile")

  add_files("./*.asm", { rule = "compile" })
  on_run(function()
    os.exec("bochs -q")
  end)
end)
