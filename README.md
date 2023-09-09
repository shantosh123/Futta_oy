# Futta_oy web testing using Robot Framework
# This is a very simple web page test using the Robot Framework.
The Robot Framework is an open-source, keyword-driven test automation framework that allows you to create and execute test cases for software applications. It provides a high-level, human-readable syntax that makes it accessible to testers, developers, and other stakeholders without extensive programming knowledge. Robot Framework is designed to be versatile and can be used for various types of testing, including acceptance testing, regression testing, and robotic process automation (RPA).
# Some informative links 
1, https://robotframework.org/<br>
2, https://robotframework.org/robotframework/#standard-libraries<br>
3, https://robotframework.org/robotframework/latest/libraries/BuiltIn.html<br>

# In this testing process, I have used the new Standard library named Dialogs, where I have used (Execute manual step.
To use 
*** Settings ***
Library             Dialogs
# To start the test process <br>
- open the terminal<br>
- robot -d results tests/Futta_com.robot<br>

# file structure

![file](https://github.com/shantosh123/Futta_oy/assets/75415500/030e282c-2cb4-4797-8e5a-f5a8709c8bc8)

# When we run the command 
we will see the popup window 

![copy](https://github.com/shantosh123/Futta_oy/assets/75415500/d328e62e-bd22-48b6-ac0d-ca3bed2c6cc6)
# This is inbuilt library named Pause Execution ( it will popup the window and ask to continue the task) 
# To use 
Just write this command on your test cases
**pause execution**

