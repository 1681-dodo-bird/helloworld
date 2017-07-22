build: hello-android hello-linux-amd64 hello-linux-i386 hello-windows-amd64.exe hello-windows-i386.exe hello-darwin-amd64 hello-darwin-i386 hello-linux-arm

hello-linux-amd64: *.go
	GOOS=linux   GOARCH=amd64 go build -o hello-linux-amd64       github.com/1681-dodo-bird/hello 

hello-linux-i386: *.go
	GOOS=linux   GOARCH=386   go build -o hello-linux-i386        github.com/1681-dodo-bird/hello 

hello-windows-amd64.exe: *.go
	GOOS=windows GOARCH=amd64 go build -o hello-windows-amd64.exe github.com/1681-dodo-bird/hello 

hello-windows-i386.exe: *.go
	GOOS=windows GOARCH=386   go build -o hello-windows-i386.exe  github.com/1681-dodo-bird/hello 

hello-darwin-amd64: *.go
	GOOS=darwin  GOARCH=amd64 go build -o hello-darwin-amd64      github.com/1681-dodo-bird/hello 

hello-darwin-i386: *.go
	GOOS=darwin  GOARCH=386   go build -o hello-darwin-i386       github.com/1681-dodo-bird/hello 

hello-linux-arm: *.go
	GOOS=linux   GOARCH=arm   go build -o hello-linux-arm         github.com/1681-dodo-bird/hello 

hello-android: *.go
	GOOS=android              go build -o hello-android           github.com/1681-dodo-bird/hello 

*.go:
