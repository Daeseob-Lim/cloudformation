#!/bin/sh

aws cloudformation delete-stack \
	--stack-name ci-visualization
