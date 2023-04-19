FROM golang:1.20-alpine

COPY fullcycle.go ./fullcycle.go

ENTRYPOINT [ "go", "run",  "fullcycle.go"]