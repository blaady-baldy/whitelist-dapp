const {ethers}= require("hardhat");

async function main() {
  const whitelistContract = await ethers.getContractFactory("Whitelist");
  const whitelistContractDeployed = await whitelistContract.deploy(10);
  await whitelistContractDeployed.deployed();

  console.log("whitelist contract deployed at "+ whitelistContractDeployed.address);
}

// We recommend this pattern to be able to use async/await everywhere
// and properly handle errors.
main()
.then(() =>process.exit(0))
.catch((error) => {
  console.error(error);
  process.exitCode = 1;
});
