# Dev Machine Scripts

This repository contains scripts used to setup a developer's machine in a (semi) automated fashion. Follow the steps below, and in no time, you'll have your machine set up.

## Prerequisites

- Your machine is running Windows 10 Enterprise, Version 1809 or later
- You have Admistrator access on your local machine

## Preparation

- Run "Windows Powershell" as an adminstrator, then run the command `Set-ExecutionPolicy Unrestricted`. This will allow you to execute the scripts contained in this repo.

## Setup Programs and Features

Run the script `Install-ProgramsAndFeatures.ps1` as an adminstrator. This will install a bunch of stuff on your machine through Chocolatey.

Your machine will restart after this script has completed.

## Temporary: Install Visual Studio 2019

There's a problem with installing VS 2019 through Chocolatey, so for now, install it yourself. Download [VS 2019 Professional](https://visualstudio.microsoft.com/vs/), then
make sure to select the workloads ".NET desktop development", "ASP.NET and web development", and ".NET Core cross-platform development" in the installer.

Restart your machine after this completes.