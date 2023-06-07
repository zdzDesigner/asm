add_rules("mode.debug")




rule("compile", function()
  on_build(function(target)
    local sourcefiles = target:sourcebatches()["asm.build"]["sourcefiles"]
    -- print(sourcefiles) -- 目录
    for _, value in ipairs(sourcefiles) do
      local name = string.match(value, 'src/(%w+).asm')
      if name ~= nil then
        os.exec("nasm ./%s -o ./build/%s.bin", value, name)
      end
    end
    os.exec("dd if=./build/hello.bin of=master.img bs=512 count=1 conv=notrunc")
  end)
end)

target("build", function()
  add_rules("compile")

  add_files("./src/*.asm", { rule = "compile" })
  on_run(function()
    os.exec("bochs -q")
  end)
end)
