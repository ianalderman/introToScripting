#!/bin/bash
#Simple Script taking our initial commands.
az group create --name introductionToScriptingBash --location northeurope
#This line doesn't actually achieve anything as the VM already exists (if we did the command demos)
az vm create -g introductionToScriptingBash --location northeurope -n DemoVM1 --image UbuntuLTS
#This line creates another VM
az vm create -g introductionToScriptingBash --location northeurope -n DemoVM2 --image UbuntuLTS