contract NusaPayStablecoin is ERC20 {
    constructor() ERC20("Nusa Stablecoin", "nUSD") {}
    function mint(address to, uint256 amount) external { _mint(to, amount); }
    function burn(address from, uint256 amount) external { _burn(from, amount); }
}
