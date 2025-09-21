contract NusaPayVault {
    mapping(address => uint256) public balances;
    function deposit() external payable { balances[msg.sender] += msg.value; }
    function withdraw(uint256 amount) external { 
        require(balances[msg.sender] >= amount, "Insufficient balance");
        balances[msg.sender] -= amount;
        payable(msg.sender).transfer(amount);
    }
}
