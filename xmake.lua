-- on_run(function()
--   os.exec("nasm ./src/hello.asm -o ./src/hello.bin")
--   os.exec("dd if=./src/hello.bin of=master.img bs=512 count=1 conv=notrunc")
--   -- os.exec("bochs -q")
-- end)
target("bochs", function()
  set_kind('static')
  set_toolchains('nasm')
  add_files('./src/*.asm')
  print("xxxxxxxxx")
end)