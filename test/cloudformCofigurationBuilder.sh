JSONSTRING=$( jq -n \
    '{Parameters: {BuildCommit: $CODEBUILD_RESOLVED_SOURCE_VERSION}}'
)

echo $JSONSTRING > ./CloudformConfiguration.json