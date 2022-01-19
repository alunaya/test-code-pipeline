TargetJsonString=$(jq --arg buildid "${CODEBUILD_RESOLVED_SOURCE_VERSION}" \
 '.Parameters.BuildIdParameter |= $buildid' ./test/cloudform-conf.json)
TargetJsonString=$(echo TargetJsonString | jq --arg outputbucket "${OutputBucket}" \
 '.Parameters.OutputBucketParameter |= $outputbucket' <<< $TargetJsonString)
echo $TargetJsonString | tee ./${service}/${CloudFormConfigurationFileName}