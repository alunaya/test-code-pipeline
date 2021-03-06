#!bin/bash
TargetJsonString=$(jq --arg buildid "${CODEBUILD_RESOLVED_SOURCE_VERSION}" \
 '.Parameters.BuildIdParameter |= $buildid' ./${service}/${CloudFormConfigurationFileName})
TargetJsonString=$(echo $TargetJsonString | jq --arg outputbucket "${OutputBucket}" \
 '.Parameters.OutputBucketParameter |= $outputbucket')
echo $TargetJsonString | tee ./${service}/${CloudFormConfigurationFileName} > /dev/null
# echo '{"Parameters": {"BuildId":"'${CODEBUILD_RESOLVED_SOURCE_VERSION}'","OutputBucket":"'${OutputBucket}'"}}' | tee ./${service}/${CloudFormConfigurationFileName}.json