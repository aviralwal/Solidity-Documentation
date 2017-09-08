# Solidity Documentation

## setup

Install `@digix/doxity` globally or locally in your project.

```bash
# globally
npm install -g @digix/doxity
# or within project folder
npm install --save-dev @digix/doxity
```

Solc 0.4.x required ([native](http://solidity.readthedocs.io/en/develop/installing-solidity.html#binary-packages))

Steps to install solc(latest stable):-

```
sudo add-apt-repository ppa:ethereum/ethereum
sudo apt-get update
sudo apt-get install solc
```

## Requirements
The document must be [natspec](https://github.com/ethereum/wiki/wiki/Ethereum-Natural-Specification-Format) in order to document it

## Process
Create a project directory
Create a folder `contracts` under the project directory which contains all the solidity contracts
run `doxity init` in project directory


The html doc genteated is present under `docs` folder


## Issues
### Issue:-
`sudo add-apt-repository ppa:ethereum/ethereum` gives error
```
Cannot add PPA: 'ppa:~ethereum/ubuntu/ethereum'.

ERROR: '~ethereum' user or team does not exist.
```

### Solution:-
Check the internet connection

 