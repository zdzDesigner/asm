add_rules("mode.debug")


target("hello", function()
  set_default(false)
  add_files("./*.asm")
  on_load(function(target)
    print("name: %s", target:name())
    -- os.exec("nasm ./*.asm -o ./*.bin")
    -- os.exec("dd if=hello.bin of=master.img bs=512 count=1 conv=notrunc")
    -- os.exec("bochs -q")
  end)
end)


-- target("hello", function()
--   set_default(false)
--   on_build(function(target)
--     print("name: %s", target:name())
--     os.exec("nasm ./hello.asm -o ./hello.bin")
--     os.exec("dd if=hello.bin of=master.img bs=512 count=1 conv=notrunc")
--     os.exec("bochs -q")
--   end)
-- end)












