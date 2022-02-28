# multistage dockerfile

FROM golang:1.17
WORKDIR /usr/src/app
COPY . .
RUN go build main.go

FROM scratch
WORKDIR /root/
COPY --from=0 /usr/src/app/main ./
ENTRYPOINT ["./main"]
