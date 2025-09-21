contract NusaPayStaking {
    IERC20 public nusa;
    mapping(address => uint256) public staked;
    constructor(address token) { nusa = IERC20(token); }
    function stake(uint256 amount) external {
        nusa.transferFrom(msg.sender, address(this), amount);
        staked[msg.sender] += amount;
    }
    function unstake(uint256 amount) external {
        require(staked[msg.sender] >= amount, "Not enough staked");
        staked[msg.sender] -= amount;
        nusa.transfer(msg.sender, amount);
    }
}
