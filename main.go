package main

import (
	"github.com/gin-gonic/gin"
)

func main() {
	g := gin.Default()

	g.GET("/", index)

	g.Run(":2000")
}

func index(c *gin.Context) {
	c.String(200, "Hello, world!")
}
