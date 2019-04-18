# 修复Xcode10报错脚本
一键修复Xcode10以及后续升级Xcode缺少libc++等库引起的报错.

类似这种报错Info: `Error: ld: library not found for -lstdc++`

以下两种方法任意选择一种即可:

1. 打开终端输入以下命令

   ```shell
   sudo sh -c "$(curl -fsSL https://raw.githubusercontent.com/chenjiangui/fix_xcode_libc-/master/network_fix.sh)"
   ```

   

2. 打开终端克隆仓库,或者下载仓库到本地,执行`local_fix.sh`脚本

   ```shell
   git clone https://github.com/chenjiangui/fix_xcode_libc-.git
   cd fix_xcode_libc-
   sh local_fix.sh
   ```



