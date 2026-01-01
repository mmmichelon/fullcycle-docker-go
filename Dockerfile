# etapa de build
FROM golang:1.25-alpine AS builder

WORKDIR /app
COPY go.mod ./
RUN go mod download

COPY . .
RUN CGO_ENABLED=0 GOOS=linux GOARCH=amd64 go build -o app

# etapa final (imagem mínima)
FROM scratch
WORKDIR /app
COPY --from=builder /app/app .
CMD ["./app"]
