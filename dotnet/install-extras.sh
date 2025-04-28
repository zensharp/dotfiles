#!/usr/bin/env bash

dotnet nuget add source "https://gitlab.com/api/v4/projects/29250253/packages/nuget/index.json" --name "GitLab (Andtech Studios)"
dotnet tool install -g dotnet-script
dotnet tool install -g andtech.gooball
dotnet tool install -g andtech.dj
dotnet tool install -g andtech.gitline
dotnet tool install -g maid
