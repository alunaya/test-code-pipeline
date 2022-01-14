JSONSTRING=$( jq -n \
    -- arg ${CODEBUILD_RESOLVED_SOURCE_VERSION}
    '{Parameters: {BuildCommit: $CODEBUILD_RESOLVED_SOURCE_VERSION}}'
)

echo $JSONSTRING > ./CloudformConfiguration.json