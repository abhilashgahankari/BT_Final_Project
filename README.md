# Pet Shop DApp using Truffle Suite

This is a sample application using the [Truffle Framework](https://www.trufflesuite.com) to interact with the Ethereum Blockchain, making this my first sample DApp (Distributed Application)

### Pre-requisites
* Install `node` >= v8  and `npm`

* Install the Truffle suite
```
$ npm install truffle
```
* Install [Ganache](https://www.trufflesuite.com/ganache)

* Install [Metamask](https://metamask.io) Chrome Browser extension


### Steps
* Start the Ganache App
* Create a new workspace in Ganache and point it to `truffle-config.js` in this repo

* Test your Truffle code
```
$ truffle test
```
* Compile your code
```
$ truffle compile
```
* Run Migration
```
$ truffle migrate
```
* For the Web FrontEnd, Run `npm`
```
$ npm install
```
* Run the built-in web server
```
$ npm run dev
```
* When you run the `lite-server`, the Web application will open in your Chrome browser. It will also pop-up a window to connect a MetaMask account.
* Import a new Account in Metamask by entering the Twelve work Seed Phrase seen on Ganache.
* Then, in Metamask, in "Networks" create a custom Network connection, by connecting it to IPC URL "http://127.0.0.1:7545" (You can give it any Network Name like "Ganache")
* That's it ! Now try clicking on "Adopt" and you should be able to Adopt a dog from your Petshop



### Reference
* [Ethereum Petshop](https://www.trufflesuite.com/tutorials/pet-shop)
