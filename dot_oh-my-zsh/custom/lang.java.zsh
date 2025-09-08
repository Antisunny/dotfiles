# 切换不同版本的java
activate-java() {
    if [[ "$1" == "11" ]]; then
        sudo rm /Library/Java/JavaVirtualMachines/openjdk.jdk
        sudo ln -sfn /usr/local/opt/openjdk@11/libexec/openjdk.jdk /Library/Java/JavaVirtualMachines/openjdk.jdk
        java --version
    elif [[ "$1" == "18" ]]; then
        sudo rm /Library/Java/JavaVirtualMachines/openjdk.jdk
        sudo ln -sfn /usr/local/opt/openjdk@18/libexec/openjdk.jdk /Library/Java/JavaVirtualMachines/openjdk.jdk
        java --version
    else
        echo "not supported arguent"
    fi
}

