#!/bin/sh

# 指定要处理的目录路径
TARGET_DIR="./install/lib"

# 遍历指定目录下所有 .a 文件
for file in "$TARGET_DIR"/*.a; do
    # 检查是否有 .a 文件
    if [ -f "$file" ]; then
        echo "正在处理文件: $file"
        # 对文件进行 strip 操作
        $HOME/android-ndk-r27c/toolchains/llvm/prebuilt/linux-x86_64/bin/llvm-strip "$file"
        echo "已完成: $file"
    else
        echo "没有找到 .a 文件"
    fi
done