package main

import (
	"backend/internal/server"
	"fmt"
	"os"
	"strconv"

	_ "github.com/joho/godotenv/autoload"
)

func main() {

	server := server.New()

	server.RegisterFiberRoutes()
	port, _ := strconv.Atoi(os.Getenv("PORT"))
	err := server.Listen(fmt.Sprintf(":%d", port))

	// print listen on port
	fmt.Printf("Server is running on port %d\n", port)

	if err != nil {
		panic(fmt.Sprintf("cannot start server: %s", err))
	}
}
