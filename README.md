# RobotAutomationFrameworkProject
A project done after the completion of Robot Framework training.
The site used for automation is :- http://automationpractice.com/index.php?.

**The automation tests are as follows:**

### 1. registration_tests.robot: 
        This test is used for registering new user. 
        It will generate error if already registered email is used.
        
### 2. login_tests.robot
        This function clicks on sign in and enters email and password stored in GlobalVariableResource and clicks on login.
        This function doesnot Launch Browser or Close it.
        
### 3. adding_tshirt_to_cart_tests.robot
        Adds t-shirt to cart and validate that.
        
### 4. writing_casual_dresses_review_test.robot
        Write review for dress in casual dresses sub menu and validate successful completion.
        
### 5. check_out_tests.robot
        Adds first dress from home page and purchase it from cart.
        Successful completion is validated and Cheque details are printed on console.
    
### AutomateLogin.resource
        Automates Login procedure.
        This keyword uses global variable **${REGISTERED EMAIL ADDRESS}** and **${REGISTERED PASSWORD}** 
        from **GlobalVariableResource.resource** file.
        **If the current credentials don't work then run registration_tests.robot in LoginSuite folder and 
        update GlobalVariableResource.resource with those credentials.**
        This function doesnot Launch Browser or Close it.
