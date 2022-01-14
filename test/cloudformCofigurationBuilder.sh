JSONSTRING=$( jq -n \
    --arg BuildCommit "" \
    '{Parameters: {BuildCommit: $BuildCommit}}'
)

echo $JSONSTRING > ./CloudformConfiguration.json