package main

import (
	"fmt"
	"log"
)

func main()  {
	fmt.Println("Welcome to Logging 101 Playground")

	log.Print("Logging 101. This is a sample log Print")
	// log.Fatal("Logging 101. This is a sample log Fatal")

	log.Println("Logging 101. This is a sample log Println")
	// log.Fatalln("Logging 101. This is a sample log Fatalln")
	
	log.Printf("%s. This is a sample log Printf", "Logging 101")
	// log.Fatalf("%s. This is a sample log Fatalln", "Logging 101")

	// log.Panic("Logging 101. This is a sample log Panic")
	log.Prefix()

}