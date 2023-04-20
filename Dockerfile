FROM golang:1.20.3 as build

COPY fullcycle.go /go/fullcycle.go
WORKDIR /go
RUN go build fullcycle.go

FROM scratch
COPY --from=build /go .

CMD [ "./fullcycle" ]