# 使い方

https://www.trufflesuite.com/docs/truffle/getting-started/using-truffle-develop-and-the-console

## ローカルでコントラクトの状態をシミュレートする

```
npx truffle develop
```

## ローカルでブロックチェーンを実際に起動して truffle から接続する

```
npx ganache-cli

# 別のシェルで
npx truffle console
```

## truffle develop & truffle console のコマンド

https://www.trufflesuite.com/docs/truffle/getting-started/using-truffle-develop-and-the-console#commands-available

`truffle build` のような truffle のサブコマンドがそのまま実行できます。

```
npx truffle develop
Connected to existing Truffle Develop session at http://127.0.0.1:9545/


truffle(develop)> compile

Compiling your contracts...
===========================
> Everything is up to date, there is nothing to compile.


truffle(develop)> migrate

Compiling your contracts...
===========================
> Everything is up to date, there is nothing to compile.

Network up to date.
```

## Sample コントラクトで試してみる

最初の name の "Mr. Big" は migrations/2_deploy_contracts.js から constructor に渡されています。

```
npx truffle develop
Connected to existing Truffle Develop session at http://127.0.0.1:9545/

truffle(develop)> migrate

Compiling your contracts...
===========================
> Everything is up to date, there is nothing to compile.



Starting migrations...
======================
> Network name:    'develop'
> Network id:      5777
> Block gas limit: 6721975 (0x6691b7)


1_initial_migration.js
======================

   Replacing 'Migrations'
   ----------------------
   > transaction hash:    0x13e2c0555cb8895bcf77ddd9cfda0f7ca3b4c1772d1eca9af9fcdf817662a580
   > Blocks: 0            Seconds: 0
   > contract address:    0xDa12D8E30A24FFD134eE0c695eAa4cfa2C960321
   > block number:        18
   > block timestamp:     1597367582
   > account:             0x5aCEe2381Cde21Fffd1b7a7eCBCe416724Ba67c6
   > balance:             98.91098812
   > gas used:            191943 (0x2edc7)
   > gas price:           20 gwei
   > value sent:          0 ETH
   > total cost:          0.00383886 ETH


   > Saving migration to chain.
   > Saving artifacts
   -------------------------------------
   > Total cost:          0.00383886 ETH


2_deploy_contracts.js
=====================

   Replacing 'Sample'
   ------------------
   > transaction hash:    0x87c0078e704947cf29c2065a144caa5f55e39695b48a5a0e4a4da54e6874653e
   > Blocks: 0            Seconds: 0
   > contract address:    0x6e6CCa23d7320d34652Ae288220C78eCa4B58d67
   > block number:        20
   > block timestamp:     1597367582
   > account:             0x5aCEe2381Cde21Fffd1b7a7eCBCe416724Ba67c6
   > balance:             98.90470408
   > gas used:            271864 (0x425f8)
   > gas price:           20 gwei
   > value sent:          0 ETH
   > total cost:          0.00543728 ETH


   > Saving migration to chain.
   > Saving artifacts
   -------------------------------------
   > Total cost:          0.00543728 ETH


Summary
=======
> Total deployments:   2
> Final cost:          0.00927614 ETH


truffle(develop)> let instance = await Sample.deployed()
undefined
truffle(develop)> instance.name()
'Mr. Big'
truffle(develop)> instance.changeName("Guns N' Roses")
{
  tx: '0x7df4fbb1b3f67a7d48ec99e49060ba8d9f7db7981fb72a7e56fbdcb126abb583',
  receipt: {
    transactionHash: '0x7df4fbb1b3f67a7d48ec99e49060ba8d9f7db7981fb72a7e56fbdcb126abb583',
    transactionIndex: 0,
    blockHash: '0xed4cef9b2a803c35dbe72435694d89e6cd9d9f951de051952ed8e4e4a36316be',
    blockNumber: 22,
    from: '0x5acee2381cde21fffd1b7a7ecbce416724ba67c6',
    to: '0x6e6cca23d7320d34652ae288220c78eca4b58d67',
    gasUsed: 29191,
    cumulativeGasUsed: 29191,
    contractAddress: null,
    logs: [],
    status: true,
    logsBloom: '0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000',
    rawLogs: []
  },
  logs: []
}
truffle(develop)> instance.name()
"Guns N' Roses"
```
