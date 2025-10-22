let sys_version=$(/Library/Java/JavaVirtualMachines/openjdk.jdk/Contents/Home/bin/java --version | head -n 1 | awk '{print $2}' | cut -d'.' -f1) # 只获取大版本号
let opt_version=$(/usr/local/opt/openjdk/bin/java --version | head -n 1 | awk '{print $2}' | cut -d'.' -f1)
if [ "$sys_version" -ne "$opt_version" ]; then
    echo "Updating System Java version from $sys_version to $opt_version"
    sudo ln -sfn /usr/local/opt/openjdk/libexec/openjdk.jdk /Library/Java/JavaVirtualMachines/openjdk.jdk
fi

export PATH="/usr/local/opt/openjdk/bin:$PATH"
export CPPFLAGS="-I/usr/local/opt/openjdk/include"

# 切换不同版本的java
activate-java() {
    # 当前java版本
    /usr/bin/java --version | head -n 1
    # 读取用户输入的版本号
    read -r -p "Enter Java version (e.g., 8, 11, 17, 20, 25): " version
    sudo rm /Library/Java/JavaVirtualMachines/openjdk.jdk
    sudo ln -sfn /usr/local/opt/openjdk@$version/libexec/openjdk.jdk /Library/Java/JavaVirtualMachines/openjdk.jdk
    /usr/bin/java --version | head -n 1
}

