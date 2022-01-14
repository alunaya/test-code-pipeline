JSONSTRING=$( jq -n \
    --arg commitversion "${CODEBUILD_RESOLVED_SOURCE_VERSION}" \
    '{Parameters: {BuildCommit: $commitversion}}'
)

echo $JSONSTRING > ./CloudformConfiguration.json