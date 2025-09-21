contract NusaPayTreasury {
    address public dao;
    constructor(address _dao) { dao = _dao; }
    receive() external payable {}
    function withdraw(address payable to, uint256 amount) external {
        require(msg.sender == dao, "Not authorized");
        to.transfer(amount);
    }
}
