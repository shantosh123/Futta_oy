*** Settings ***
Documentation       This the full test of futta oy
Library             SeleniumLibrary
Library             Dialogs


# robot -d results tests/Futta_com.robot




*** Variables ***
${URL} =        https://futta.fi/


*** Test Cases ***
Should be able to open the web page
        [Documentation]         This is the test case 1
        [Tags]                  Test Case 1
        #sleep                   .20s
        open browser            ${URL}      edge
        maximize browser window
        wait until page contains    Moving & Vehicle Rentals


        close all browsers
Should be able to navigate get your transport quote
        [Documentation]            This is the test case 2
        [Tags]                      Test Case 2
        open browser                ${URL}      edge
        maximize browser window
        Pause Execution             # it will popup the window and ask for continue the task
        wait until page contains    Get your transport quote
        close all browsers
Should be able to open the browser as your choice
        [Documentation]             This is test case 3
        # here we can choose the browser as our choice on the popup box
        [Tags]                      Test case 3

        ${new_browser} =    get selection from user    Which Browser you want       Chrome  Edge    firefox
         open browser       ${URL}          ${new_browser}
         maximize browser window
         pause execution
         click element              xpath=//*[@id="root"]/div[2]/div/div[2]/div[2]/form/div[1]/select
         execute manual step        Did you choose right one?       You din not choose right one!

         #close all browsers