package main

import (
	"bytes"
	"fmt"
	"time"
	"math/rand"
	"log"
)

func main()  {
	fmt.Println("Welcome to the Playground")

	fmt.Println("The current time is ", time.Now())
	rand.Seed(time.Now().UnixNano())
	fmt.Println("My favorite number is ", rand.Intn(15))
	var (
		buf    bytes.Buffer
		logger = log.New(&buf, "logger: ", log.Lshortfile)
	)
	logger.Print("Welcoome to logging in GO")
	fmt.Print(&buf)
}