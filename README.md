# geth-action
Private chain of Ethereum for test using geth

## Example
WIP
```yaml
on: [push]

jobs:
  test:
    runs-on: ubuntu-latest
    name: test
    steps:
    - uses: actions/checkout@v2
    - name: Geth Action
      uses: odanado/geth-action@v0.0.8
      id: geth
    - name: curl
      run: |
        curl -X POST --data '{"jsonrpc":"2.0","method":"web3_clientVersion","params":[],"id":67}' ${{ steps.geth.outputs.rpc_url }} -H "Content-Type: application/json"
      shell: bash
```