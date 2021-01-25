#!/bin/bash
Run() {
	CreateProject() {
		PJ_NAME="test_project"
		mkdir "$PJ_NAME"
		cd "$PJ_NAME"
		mkdir "src"
		npm init -y
	}
	InstallWebpack() {
		npm i -D webpack webpack-cli webpack-dev-server
	}
	Build() {
		npx webpack --watch
	}
	StartupServer() {
		npx webpack serve
	}
	CreateProject
	InstallWebpack
	Build
	StartupServer
}

Run "$@"
