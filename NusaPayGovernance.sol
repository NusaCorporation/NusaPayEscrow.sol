contract NusaPayGovernance {
    mapping(uint256 => uint256) public votes;
    function vote(uint256 proposalId) external { votes[proposalId] += 1; }
}
