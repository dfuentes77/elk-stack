aws cloudformation create-stack \ 
--template-body file://cloudformation/ELK_Stack_Multi_AZ_in_Private_VPC.json \
--stack-name elk-stack \
--capabilities CAPABILITY_IAM \
--parameters ParameterKey=Stack,ParameterValue=elkstack-oauth \
ParameterKey=KeyName,ParameterValue=dfuentes77_keypair \
ParameterKey=ElkCapacity,ParameterValue=4 \
ParameterKey=VpcId,ParameterValue=vpc-e4447681 \
ParameterKey=PublicVpcSubnets,ParameterValue='subnet-0c670655\,subnet-4c199167\,subnet-e36e2394\,subnet-77d6e94d' \
ParameterKey=ElkSnapshotRepository,ParameterValue='elkoauthsnapshotbackups' \
ParameterKey=HostedZoneName,ParameterValue='spicypunchline.com'
