# bochs


- 代码写入到硬盘
  1. if 出入文件
  2. of 输出到磁盘
  3. bs 扇区大小
  4. count 写入一个扇区
  5. conv notrunc不截断
```sh
dd if=hello.bin of=master.img bs=512 count=1 conv=notrunc
```


- 启动
```sh
bochs -q

```


