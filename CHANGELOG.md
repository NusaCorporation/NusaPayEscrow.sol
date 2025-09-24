## [0.1.1] - 2025-09-24
### Added
- Implemented **NusaPayEscrow.sol**
  - Secure escrow flow: create, claim, refund
  - Integrated **EIP-2612 Permit** for gasless approval
  - Safety modules: OpenZeppelin **Pausable** + **ReentrancyGuard**
- Hardhat + TypeScript test coverage (unit + integration)
- CI/CD pipeline (GitHub Actions) for auto build & test
