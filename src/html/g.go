package main

// 项目中每个文件都是包，要有一个包名
//  go mod init <name> 创建项目依赖的记录文件

import (
	"fmt"
	"net/http"
	"os/exec"
	"runtime"
)

func main() {
	httpPort := "8070" // 设置服务器监听的端口号

	go startServer(httpPort) // 在协程中启动服务器

	url := fmt.Sprintf("http://localhost:%s", httpPort)
	openURL(url) // 在浏览器中打开指定的URL
}

func startServer(port string) {
	http.Handle("/", http.FileServer(http.Dir("."))) // 将当前目录作为静态文件服务器的根目录

	fmt.Printf("服务器已启动，访问 http://localhost:%s\n", port)

	err := http.ListenAndServe(":"+port, nil)
	if err != nil {
		fmt.Println("服务器启动失败：", err)
	}
}

func openURL(url string) {
	var err error

	switch runtime.GOOS {
	case "darwin": // macOS
		err = exec.Command("open", url).Start()
	case "windows": // Windows
		err = exec.Command("cmd", "/c", "start", url).Start()
	default: // Linux 或其他
		err = exec.Command("xdg-open", url).Start()
	}

	if err != nil {
		fmt.Println("无法在浏览器中打开URL:", err)
	}
}

// go run g.go
// go build -o g.exe
