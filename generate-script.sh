#!bin/bash
TargetJsonString=$(jq --arg buildid "${CODEBUILD_RESOLVED_SOURCE_VERSION}" \
 '.Parameters.BuildIdParameter |= $buildid' ./test/cloudform-conf.json)
TargetJsonString=$(echo $TargetJsonString | jq --arg outputbucket "${OutputBucket}" \
 '.Parameters.OutputBucketParameter |= $outputbucket')
echo $TargetJsonString | tee ./${service}/${CloudFormConfigurationFileName}.json > /dev/null
# echo '{"Parameters": {"BuildId":"'${CODEBUILD_RESOLVED_SOURCE_VERSION}'","OutputBucket":"'${OutputBucket}'"}}' | tee ./${service}/${CloudFormConfigurationFileName}.json