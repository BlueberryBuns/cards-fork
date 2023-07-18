FROM golang:1.20 as builder
WORKDIR /go/src/github.com/BlueBerryBuns/CardsBackend
COPY . .
RUN go mod download
EXPOSE 8000
RUN CGO_ENABLED=0 go build -o /app main.go


FROM scratch
WORKDIR /
COPY --from=builder /app /app
EXPOSE 8080
ENTRYPOINT [ "/app" ]