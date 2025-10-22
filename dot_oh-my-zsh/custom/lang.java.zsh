sudo ln -sfn /usr/local/opt/openjdk/libexec/openjdk.jdk /Library/Java/JavaVirtualMachines/openjdk.jdk

export PATH="/usr/local/opt/openjdk/bin:$PATH"
export CPPFLAGS="-I/usr/local/opt/openjdk/include"

# 切换不同版本的java
activate-java() {
    read -r -p "Enter Java version (e.g., 8, 11, 17, 20, 25): " version
    sudo rm /Library/Java/JavaVirtualMachines/openjdk.jdk
    sudo ln -sfn /usr/local/opt/openjdk@$version/libexec/openjdk.jdk /Library/Java/JavaVirtualMachines/openjdk.jdk
    java --version
}

