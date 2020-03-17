FROM golang:1.12.13

ENV GO111MODULE "on"

ENV GOPROXY "https://goproxy.cn"

WORKDIR /k8sLab/project

COPY . .

RUN go build -v -o main .

CMD ["./main"]

EXPOSE 2000

