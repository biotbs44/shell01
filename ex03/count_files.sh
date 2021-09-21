#!/bin/bash

find . | wc -l | tr -d ' ' | tr -d '\12'
