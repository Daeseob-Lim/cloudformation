#!/bin/sh

VPC_ID=vpc-402a3328
SUBNET_ID=subnet-88ebe0e0
KEY_PAIR_NAME=AWS_personal_DaeseobLim


aws cloudformation create-stack \
	--stack-name ci-visualization \
	--template-body file://ci_visualization.json \
	--parameters \
		ParameterKey=VpcId,ParameterValue=$VPC_ID \
		ParameterKey=SubnetId,ParameterValue=$SUBNET_ID \
		ParameterKey=KeyName,ParameterValue=$KEY_PAIR_NAME
