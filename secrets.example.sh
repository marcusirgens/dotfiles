# Find this by doing
# op document list --format=json | jq '.[] | select (.title == "GPG backup key") | .id' -r
export GPG_KEY_OP_ID="abc"

# The actual GPG key ID.
export GPG_KEY_ID="F0F0F0F0F0F0F0F0"