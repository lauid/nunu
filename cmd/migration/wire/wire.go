//go:build wireinject
// +build wireinject

package wire

import (
	"nunu/internal/repository"
	"nunu/internal/server"
	"nunu/pkg/app"
	"nunu/pkg/log"
	"github.com/google/wire"
	"github.com/spf13/viper"
)

var repositorySet = wire.NewSet(
	repository.NewDB,
	repository.NewRedis,
	repository.NewRepository,
	repository.NewUserRepository,
)

// build App
func newApp(migrate *server.Migrate) *app.App {
	return app.NewApp(
		app.WithServer(migrate),
		app.WithName("demo-migrate"),
	)
}

func NewWire(*viper.Viper, *log.Logger) (*app.App, func(), error) {
	panic(wire.Build(
		repositorySet,
		server.NewMigrate,
		newApp,
	))
}
