# JSCPD enablers

A repository of usefull scripts to use along with JSCPD tool  

### Using JSCPD as part of your build in Jenkins  

 ###### Follow the steps below : - 
   
  1. Install Jenkins NodeJS plugin 
     a. Login as Admin
     b. Navigate to 'Manage Jenkins' -> 'Manage Plugins'
     c. Navigate to 'Available' Section
     d. Search for NodeJS plugin 
     e. Click on 'Install without restart'
 2. Once Installed Navigate back to 'Manage Jenkins' -> 'Global tool Configuration'
 3. Scroll down to NodeJS installations, specify the version of NodeJS ( select latest )
 4. In the name textbox enter 'Install and setup NodeJS'
 5. In the textbox 'Global npm packages to install' enter 'jscpd JSON.sh'
   

 ###### Now that you are done setting up jscpd tool in your CI environment, Next we have to run it as part of our build 
   
 1. Navigate to your Task/Project in Jenkins 
 2. Click on configure in the left vertical menu 
 3. Select build tab 
 4. Click on the dropdown 'Add Build step'
 5. Select 'Install and setup NodeJS'
 6. Just leave rest of the textboxes and textareas as default . 
 7. Now add another build step by clicking on the dropdown 'Add Build step' 
 8. Select 'Execute Shell'
 9. Place the code in the script jenkins_build.sh in the text area 