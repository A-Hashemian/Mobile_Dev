import 'package:web3dart/web3dart.dart';

class Contractlinking{

  final String _rpcUrl ="http://127.0.0.1:8545";
  final String _wsUrl ="ws://127.0.0.1:8545";
  final String _privateUrl ="a622d80d9181b016de1f3667d52c0abde8c03d3c5386540eddfb837ac7227b80";

Web3Client? _web3client;

bool isLoading = false;
String? abicode;

EthereumAddress? _contractAddress;

Credentials? _credential;

DeploymentContent? _contract;

ContractFunction? _message;

ContractFunction? _sendMessage;

String? deployedName;

Contractlinking(){

  setup(); 
}

}

