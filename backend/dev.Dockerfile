FROM golang:1.20 as builder
WORKDIR /go/src/github.com/BlueBerryBuns/CardsBackend
COPY . .
RUN go mod download
EXPOSE 8000
RUN go build -o /app main.go


FROM alpine:latest
WORKDIR /
COPY --from=builder /app /app
EXPOSE 8000
ENTRYPOINT [ "/app" ]