import { DeployFunction } from "hardhat-deploy/types";
import { HardhatRuntimeEnvironment } from "hardhat/types";

const deployContracts: DeployFunction = async function (hre: HardhatRuntimeEnvironment) {
  const { deployer } = await hre.getNamedAccounts();
  const { deploy } = hre.deployments;

  // Deploy ERC20 Token
  await deploy("SandBlockToken", {
    from: deployer,
    args: [],
    log: true,
    autoMine: true,
  });

  // Deploy ERC721 NFT
  await deploy("SandBlockNFT", {
    from: deployer,
    args: [],
    log: true,
    autoMine: true,
  });
};

export default deployContracts;
deployContracts.tags = ["SandBlockToken", "SandBlockNFT"];
