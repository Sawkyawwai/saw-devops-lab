# EC2 unreachable after package installation

Symptoms:
- SSH hangs after "Connection established"
- Ansible previously worked
- Security Group is correct

Checks:
1. Verify EC2 is Running.
2. Check EC2 Status Checks (2/2).
3. Test SSH with `ssh -vvv`.
4. If the OS appears hung, reboot the instance.
5. Verify services:
   - ssh
   - docker
   - jenkins

Resolution:
A reboot restored the SSH service and all services became reachable again.
