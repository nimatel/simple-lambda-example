## Prerequisites
You will need to have waypoint installed locally, setup your AWS credentials and create an Elastic Container Registry and have docker running
All operations are done on a *nix based OS
If testing please run on a test aws account

### Install the Waypoint server
The server must be installed. You may install it localy which requires fewer steps but limits the functionality of some commands. 
Once you have downloaded the binary and set it in your path go in your desired folder and type 

```
waypoint install --platform=docker -accept-tos
```

The server need to be initialized. To do so please run the `init` command 

```
waypoint init
```

### Build, deploy and release the application

Deploy the application with the `up` command
Waypoint will error the first time. This is expected behavior. Once you hit the error simply re-run the command

```
waypoint up
```

Once the deploy has gone trough visit the Release URL or the Deployment URL to view the app

### Updating the app
When you want to modify the app, change parameters to your liking then re-issue the `up` command
```
waypoint up
```
Visit the Release or Deploy URL to view the changes.

### Destroy the instance 

To deprovision the container, run `destroy`

```
waypoint destroy
```
(occasionally there is a error, if you get one, try in a few seconds)
Please also note this will not delete the lambda and any infra that might have been used if modifying the waypoint.hcl file. 