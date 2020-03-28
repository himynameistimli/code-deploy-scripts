## Scripts for setting up a CodeDeploy Server

### Compatibility

These scripts are written for AWS EC2 Servers with Amazon Linux 2.


### How to use
1) `wget` the file you need. (e.g. for the agent install for ap-southeast-1)
  ```
  wget https://raw.githubusercontent.com/himynameistimli/code-deploy-scripts/master/code_deploy_agent.sh
  ```
2) Allow the file to be exectable
  ```
  chmod +x code_deploy_agent.sh
  ```
3) Run file
  ```
  ./code_deploy_agent.sh
  ```


### What this includes
- CodeDeploy Agent
- Basic dependencies for node, python
- Lets encypt installation (nginx / apache)