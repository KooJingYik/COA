include Irvine32.inc

.data
    ; movietime title
    movietimeTitle1   db "    .----------------.  .----------------.  .----------------.  .----------------.  .----------------.  .----------------.  .----------------.  .----------------.  .----------------.  ", 0Dh, 0Ah, 0
    movietimeTitle2   db "   | .--------------. || .--------------. || .--------------. || .--------------. || .--------------. || .--------------. || .--------------. || .--------------. || .--------------. | ", 0Dh, 0Ah, 0
    movietimeTitle3   db "   | | ____    ____ | || |     ____     | || | ____   ____  | || |     _____    | || |  _________   | || |  _________   | || |     _____    | || | ____    ____ | || |  _________   | | ", 0Dh, 0Ah, 0
    movietimeTitle4   db "   | ||_   \  /   _|| || |   .'    `.   | || ||_  _| |_  _| | || |    |_   _|   | || | |_   ___  |  | || | |  _   _  |  | || |    |_   _|   | || ||_   \  /   _|| || | |_   ___  |  | | ", 0Dh, 0Ah, 0
    movietimeTitle5   db "   | |  |   \/   |  | || |  /  .--.  \  | || |  \ \   / /   | || |      | |     | || |   | |_  \_|  | || | |_/ | | \_|  | || |      | |     | || |  |   \/   |  | || |   | |_  \_|  | | ", 0Dh, 0Ah, 0
    movietimeTitle6   db "   | |  | |\  /| |  | || |  | |    | |  | || |   \ \ / /    | || |      | |     | || |   |  _|  _   | || |     | |      | || |      | |     | || |  | |\  /| |  | || |   |  _|  _   | | ", 0Dh, 0Ah, 0
    movietimeTitle7   db "   | | _| |_\/_| |_ | || |  \  `--'  /  | || |    \ ' /     | || |     _| |_    | || |  _| |___/ |  | || |    _| |_     | || |     _| |_    | || | _| |_\/_| |_ | || |  _| |___/ |  | | ", 0Dh, 0Ah, 0
    movietimeTitle8   db "   | ||_____||_____|| || |   `.____.'   | || |     \_/      | || |    |_____|   | || | |_________|  | || |   |_____|    | || |    |_____|   | || ||_____||_____|| || | |_________|  | | ", 0Dh, 0Ah, 0
    movietimeTitle9   db "   | |              | || |              | || |              | || |              | || |              | || |              | || |              | || |              | || |              | | ", 0Dh, 0Ah, 0
    movietimeTitle10  db "   | '--------------' || '--------------' || '--------------' || '--------------' || '--------------' || '--------------' || '--------------' || '--------------' || '--------------' | ", 0Dh, 0Ah, 0
    movietimeTitle11  db "    '----------------'  '----------------'  '----------------'  '----------------'  '----------------'  '----------------'  '----------------'  '----------------'  '----------------'  ", 0Dh, 0Ah, 0

    ; Welcome 
    welcomeMsg      db "******** Welcome to MovieTime  ********", 0

    ; Verify user is user or not
    userMsg         db "Are you a user of MovieTime before?", 0
    promptUser      db "[1] Yes ", 0Dh, 0Ah, "[2] No ", 0Dh, 0Ah, 0Dh, 0Ah, "Choose an option: ", 0
    userInput       db 2 dup(?)     ; Buffer for user input

    ; Login and Register data
    loginLOGO       db ">>>>>>>> LOGIN <<<<<<<<", 0
    RegisterTitle   db ">>>>>>>> REGISTER <<<<<<<<", 0
    promptUsername  db "Enter username: ", 0
    promptPassword  db "Enter password: ", 0
    usernameInput   db 20 dup(?)    ; Buffer for username input
    passwordInput   db 20 dup(?)    ; Buffer for password input
    regUsername     db 20 dup(?)    ; Buffer for registered username
    regPassword     db 20 dup(?)    ; Buffer for registered password

    ; Admin account data
    admin_username  db 'admin', 0       ; Null-terminated string
    admin_password  db '123'  , 0       ; Null-terminated string
    adminmenuTitle  db ">>> Admin Menu <<<", 0
    adminmenubar    db "[1] Login ", 0Dh, 0Ah, 
                       "[2] Register ", 0Dh, 0Ah, 
                       "[3] Movie ", 0Dh, 0Ah, 
                       "[4] Membership Package ", 0Dh, 0Ah,
                       "[5] Payment ", 0Dh, 0Ah,
                       "[6] Setting ", 0Dh, 0Ah,
                       "[7] Feedback ", 0Dh, 0Ah, 0Dh, 0Ah, "Choose an option: ", 0
    adminSelection  db 2 dup(?)    ; Buffer for admin menu selection

   ; Invalid input message
    invalidinput    db "Please select a number between '1' or '2'", 0
    invalidinput2   db "Please select a number between '1', '2' and '3'", 0
    invalidinput3   db "Please select a number between '1', '2', '3' and '4'", 0
    invalidinput4   db "Please select a number between '1' to '10'", 0
    invalidinput5   db "Please select a number between '1' to '5'", 0
    invalidinput6   db "Invalid input. Please enter Y or N.", 0Dh, 0Ah, 0
    invalidinput7   db "Invalid input. Please enter y or n.", 0Dh, 0Ah, 0   
    invalidinput8   db "Please select a number between '1' to '7'", 0

    ; Failed login process
    invalidinputMsg db "Please enter any character without leaving blank ! ", 0
    invalidinputbox BYTE "Invalid input. Please try again.", 0 
    invalidLogin    db "Invalid username or password!", 0
    failedLogin     db "[1] Forget Password ", 0Dh, 0Ah, "[2] Try Again", 0Dh, 0Ah, 0Dh, 0Ah, "Choose an option: ", 0

    ; Success login process
    MovieTimeTitle  BYTE  "*** MovieTime ***",0
    successLogin    BYTE  "Login successful!", 0
    registeredMsg   BYTE  "Registration successful!", 0

    ; User menu
    greetingMsg    db "Hello, ", 0
    welcomeuserMsg db "Welcome to MovieTime ", 0
    usermenuTitle  db ">>> MovieTime <<<", 0
    usermenubar    db "[1] Movie ", 0Dh, 0Ah, 
                      "[2] Membership ", 0Dh, 0Ah, 
                      "[3] Payment ", 0Dh, 0Ah, 
                      "[4] Setting ", 0Dh, 0Ah, 0Dh, 0Ah, "Choose an option: ", 0
    userSelection  db 2 dup(?)    ; Buffer for admin menu selection

    ; Table data
    MTitle1         db "                              +-+-+-+-+-+ +-+-+-+-+ ", 0Dh, 0Ah, 0
    MTitle2         db "                                M o v i e   M e n u  ", 0Dh, 0Ah, 0
    MTitle3         db "                                +-+-+-+-+-+ +-+-+-+-+ ", 0Dh, 0Ah, 0
    Line1           db "+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+", 0Dh, 0Ah, 0
    tableHeader     db "| No |        Movie Name        |       Type       | Duration | Rating |   Price  | ", 0Dh, 0Ah, 0
    Line2           db "|-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-| ", 0Dh, 0Ah, 0
    tableRow1       db "|  1 |          Aquaman         | Action/Adventure |  1h 56m  |   3.8  | RM 17.00 | ", 0Dh, 0Ah, 0
    tableRow2       db "|  2 |         John Wick        | Action/Crime     |  2h 10m  |   4.3  | RM 25.00 | ", 0Dh, 0Ah, 0
    tableRow3       db "|  3 |         Scream VI        | Horror/Mystery   |  2h  13m |   4.5  | RM 31.00 | ", 0Dh, 0Ah, 0
    tableRow4       db "|  4 |        Blue Beetle       | Action/Adventure |  2h  16m |   3.1  | RM 26.00 | ", 0Dh, 0Ah, 0
    tableRow5       db "|  5 |       Dream Scenario     | Comedy/Fantasy   |  1h  43m |   3.8  | RM 33.00 | ", 0Dh, 0Ah, 0
    tableRow6       db "|  6 |       Evil Dead Rise     | Horror/Fantasy   |  2h  3m  |   4.1  | RM 24.00 | ", 0Dh, 0Ah, 0
    tableRow7       db "|  7 |      The Monkey King     | Action/Comedy    |  1h  36m |   4.0  | RM 16.00 | ", 0Dh, 0Ah, 0
    tableRow8       db "|  8 |   Deadpool & Wolverine   | Action/Comedy    |  2h  34m |   4.5  | RM 21.00 | ", 0Dh, 0Ah, 0
    tableRow9       db "|  9 |  Guardians of the Galaxy | Action/Sci-fi    |  2h  3m  |   3.5  | RM 23.00 | ", 0Dh, 0Ah, 0
    tableRow10      db "| 10 | The Greatest of All Time | Action/Sci-fi    |  3h  1m  |   4.1  | RM 36.00 | ", 0Dh, 0Ah, 0
    Line3           db "+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+ ", 0Dh, 0Ah, 0
    promptMovie     db "Choose movies to watch: ", 0

    ; Movie name data
    MovieName1     db "Aquaman", 0
    MovieName2     db "John Wick", 0
    MovieName3     db "Scream VI", 0
    MovieName4     db "Blue Beetle", 0
    MovieName5     db "Dream Scenario", 0
    MovieName6     db "Evil Dead Rise", 0
    MovieName7     db "The Monkey King", 0
    MovieName8     db "Deadpool & Wolverine", 0
    MovieName9     db "Guardians of the Galaxy", 0
    MovieName10    db "The Greatest of All Time", 0
    ShowMovieName  dword ? , 0Dh, 0Ah, 0
    
    ; Movie price data
    PriceMovie1    dword 17
    PriceMovie2    dword 25
    PriceMovie3    dword 31
    PriceMovie4    dword 26
    PriceMovie5    dword 33
    PriceMovie6    dword 24
    PriceMovie7    dword 16
    PriceMovie8    dword 21
    PriceMovie9    dword 23
    PriceMovie10   dword 36
    MoviePrice     dword ? , 0Dh, 0Ah, 0

    ; Membership message 
    membershipMsg     db "Would you like to have a membership with MovieTime ? ", 0
    describleMbs      db "As a member of MovieTime", 0Dh, 0Ah, "You can feel free to watch movies without having annoying advertisements.", 0
    promptMembership  db "[1] Yes ", 0Dh, 0Ah, "[2] No ", 0Dh, 0Ah, 0Dh, 0Ah, "Choose an option: ", 0
    memberSelection   db 2 dup(?)    ; Buffer for membership selection

    ; Membership table data
    membershipTitle   db " >>>>>>> Membership Package Menu <<<<<<<< ",0
    L1                db " ---------------------------------------  ", 0Dh, 0Ah, 0
    tableMembership   db "| No |  Membership Package  |   Price   | ", 0Dh, 0Ah, 0
    L2                db "|---------------------------------------| ", 0Dh, 0Ah, 0
    row1              db "|  1 |    Weekly Package    | RM  22.00 | ", 0Dh, 0Ah, 0
    row2              db "|  2 |    Monthly Package   | RM  65.00 | ", 0Dh, 0Ah, 0
    row3              db "|  3 |    Yearly Package    | RM 188.00 | ", 0Dh, 0Ah, 0
    L3                db " ---------------------------------------  ", 0Dh, 0Ah, 0
    packageMembership db "Choose number of package: ", 0
    packageSelection  db 2 dup(?)                      ; Buffer for package selection
    quantityInput     db "Quantity of package: ", 0
    pricePackage      db "Price of package: RM ", 0

    ; Membership package name data
    NamePackage1         db "Weekly Package", 0
    NamePackage2         db "Monthly Package", 0
    NamePackage3         db "Yearly Package", 0
    ShowNamePackage     dword ? , 0Dh, 0Ah, 0


    ; Membership package price data
    PricePackage1         dword 22
    PricePackage2         dword 65
    PricePackage3         dword 188
    PackagePrice          dword ? 
    QuantityPackage       dword ?

    ; Payment data
    DearcustomerMsg   db "Dear " , 0
    DearcustomerMsg1  db "," , 0
    TransactionMsg    db "This is your transaction summary: ", 0
    lineMsg           db "---------------------------------", 0
    movieName         db "The name of movie: ", 0
    MoviePriceMsg     db "The price of movie: RM ", 0
    namePackageMsg    db "The name of membership package: ", 0
    QualityMsg        db "The quality of membership package: ", 0
    PackagePriceMsg   db "The price of membership package: RM ", 0
    totalPriceMsg     db "The total payment: RM ", 0
    TotalPrice        dword 0  
    paidMsg           db "[1] Paid ", 0Dh, 0Ah, "[2] Cancel ", 0Dh, 0Ah, 0Dh, 0Ah, "Choose an option: ", 0
    paidSelection     db 2 dup(?)    ; Buffer for confirm payment selection

    ; TNG data
    tngTitle          db ">>> Touch 'n Go <<<",0
    tngUsernameMsg    db "Username: ",0
    pinnumber         db "PIN number: ",0
    movietimepaid     db "There is a transaction from MovieTime", 0
    movietimetotal    db "Total payment: RM ", 0
    confirmMsg        db "Are you confirmed ?", 0Dh, 0Ah, 0Dh, 0Ah, "[1] Yes ", 0Dh, 0Ah, "[2] No ", 0Dh, 0Ah, 0Dh, 0Ah, "Choose an option: ", 0
    confirmSelection  db 2 dup(?)    ; Buffer for confirm payment selection
    tngTitleMsg       BYTE "Touch 'n Go",0 
    transacSuccessMsg BYTE "Transaction Success" , 0
    transacFaildMsg   BYTE "Transcation Unsuccessful" , 0
    thankyouMsg       db "Thank you for using MovieTime", 0
    continueMsg       db "Do you want to continue ? (y/n): ", 0
    continueSelection db 2 dup(?)    
    conSelection      db 2 dup(?)    
    
    ; Setting data  
      userAcc       db "User Account", 0
      L4            db "------------", 0 
      username      db "Username: ", 0
      payment       db "Payment record: RM ", 0
      signoutMsg    db "Are you sure you want to sign out? (Y/N): ", 0
      sigoutInput   db 2 dup(?)
      signedOutMsg BYTE "You have successfully signed out.", 0Dh, 0Ah, 0

    ; Rate and review data
    rateQuestion   db "Would you mind taking a moment to rate this apps ?" , 0
    answerRate     db "[1] Sure ", 0Dh, 0Ah, "[2] Not now ", 0Dh, 0Ah, 0Dh, 0Ah, "Choose an option: ", 0
    commentMsg     db "Enter your reviews: ", 0
    ratingMsg      db "Please rate us 5 star: ", 0
    thankMsg       db "Thank you for your support ",0
    outputRate     db "MovieTime rating: " , 0
    userReview     db "Reviews: ", 0
    ratingInput    db 6 dup(?)
    cmttInput      dword 50 dup(?)
    rateInput      db 2 dup(?)

    ; Feedback data
    FeedbackTitle     db ">>>>> Feedback <<<<<", 0
    MovietimeUsername db "Username: ", 0
    userRating        db "Rate: ", 0

.code
main proc

MainMenu:
    ; Display MovieTime Title
    mov edx, offset movietimeTitle1
    call WriteString
    mov edx, offset movietimeTitle2
    call WriteString
    mov edx, offset movietimeTitle3
    call WriteString
    mov edx, offset movietimeTitle4
    call WriteString
    mov edx, offset movietimeTitle5
    call WriteString
    mov edx, offset movietimeTitle6
    call WriteString
    mov edx, offset movietimeTitle7
    call WriteString
    mov edx, offset movietimeTitle8
    call WriteString
    mov edx, offset movietimeTitle9
    call WriteString
    mov edx, offset movietimeTitle10
    call WriteString
    mov edx, offset movietimeTitle11
    call WriteString
  
    ; Add 2 newline after welcome message
    call CrLf 

    ; Display welcome message
    mov edx, offset welcomeMsg
    call WriteString
  
    ; Add 2 newline after welcome message
    call CrLf 
    call CrLf 

    jmp UserStatus

UserStatus:
    ; Ask for user status
    mov edx, offset userMsg
    call WriteString
    
    ; Add 2 newline after user status
    call CrLf
    call CrLf

    ; Read for user option
    mov edx, offset promptUser
    call WriteString
    mov edx, offset userInput
    mov ecx, 2
    call ReadString

     ; Clear the screen
    call ClrScr
  
    ; Check user option
    cmp byte ptr [userInput], '1' ; Check if user chose Yes (1)
    je LoginUser
    cmp byte ptr [userInput], '2' ; Check if user chose No (2)
    je RegisterUser

    ; If invalid option, show invalid input messange 
    ; Change text color to yellow
    mov eax, 14                    
    call SetTextColor              
    mov edx, offset invalidinput
    call WriteString 
    ; Reset text color to white
    mov eax, 7                     
    call SetTextColor             


    ; Add 2 newline after invalid message
    call CrLf
    call CrLf

    ;Loop back member status
    loop UserStatus
    

RegisterUser:
    ; Display register title
    mov edx, offset RegisterTitle
    call WriteString

    ; Add a newline after the prompt
    call CrLf         
        
    ; Prompt for new username
    mov edx, offset promptUsername
    call WriteString
    mov edx, offset regUsername
    mov ecx, 20 
    call ReadString

    ; Prompt for new password
    mov edx, offset promptPassword
    call WriteString
    mov edx, offset regPassword
    mov ecx, 20 
    call ReadString

    cmp eax, 0                    ; Check if EAX is zero (indicating blank input)
    je InvalidMessage1

    ; Display registration successful message
    mov edx, offset registeredMsg
    mov  ebx, offset MovieTimeTitle   
    call MsgBox
    
   ; Clear the screen
    call ClrScr

    ; Now go to login procedure
    jnz LoginUser

InvalidMessage1:

   ; Clear the screen
    call ClrScr

   ; set to yellow
    mov eax, 14                    
    call SetTextColor              
    mov edx, offset invalidinputMsg
    call WriteString 
    ; Reset text color to white
    mov eax, 7                     
    call SetTextColor

    ; Add 2 newline after invalid message
    call CrLf   
    call CrLf   
    
    jmp RegisterUser

LoginUser:
    ; Display login titile
    mov edx, offset loginLOGO
    call WriteString
    
    ; Add a newline after the login title
    call CrLf         

    ; Prompt for username
    mov edx, offset promptUsername
    call WriteString
    mov edx, offset usernameInput
    mov ecx, 20 
    call ReadString

    ; Prompt for password
    mov edx, offset promptPassword
    call WriteString
    mov edx, offset passwordInput
    mov ecx, 20 
    call ReadString

    cmp eax, 0                    ; Check if EAX is zero (indicating blank input)
    je InvalidMessage

   jnz VerifyAminNamePassword

InvalidMessage:

   ; Clear the screen
    call ClrScr

   ; set to yellow
    mov eax, 14                    
    call SetTextColor              
    mov edx, offset invalidinputMsg
    call WriteString 
    ; Reset text color to white
    mov eax, 7                     
    call SetTextColor

    ; Add 2 newline after invalid message
    call CrLf   
    call CrLf   
    
    jmp LoginUser


VerifyAminNamePassword:
    ; Verify username and password
    lea esi, [usernameInput]
    lea edi, [admin_username]
    call strcmp
    test eax, eax
    jnz CompareNamePassword

    lea esi, [passwordInput]
    lea edi, [admin_password]
    call strcmp
    test eax, eax
    jnz CompareNamePassword

    ; If username is admin,  password is 123 then show success login message
    mov eax, 1          ; Set return value to 1 (success)
    mov edx, offset successLogin
    call WriteString

    ; Clear the screen
    call ClrScr

    jmp AdminMenu

AdminMenu:
    ; Display admin menu title
    mov edx, offset adminmenuTitle
    call WriteString

    ; Add 2 newline after admin menu title
    call CrLf 
    call CrLf

    ; Display admin menu bar
    mov edx, offset adminmenubar
    call WriteString

    ; Read admin menu bar input
    mov edx, offset adminSelection
    mov ecx, 20 
    call ReadString

    ; Clear the screen
    call ClrScr

    ; Check admin option
    cmp byte ptr [adminSelection], '1' ; Check if user chose LoginUser (1)
    je LoginUser
    cmp byte ptr [adminSelection], '2' ; Check if user chose RegisterUser (2)
    je RegisterUser
    cmp byte ptr [adminSelection], '3' ; Check if user chose MovieTable (3)
    je MovieTable
    cmp byte ptr [adminSelection], '4' ; Check if user chose Membership Package (4)
    je MembershipTable
    cmp byte ptr [adminSelection], '5' ; Check if user chose Payment (5)
    je PaymentList 
    cmp byte ptr [adminSelection], '6' ; Check if user chose Setting (6)
    je Setting
     cmp byte ptr [adminSelection], '7' ; Check if user chose Feedback (7)
    je Feedback

    ; If invalid option, show invalid input message 
    mov eax, 14                    
    call SetTextColor              
    mov edx, offset invalidinput8
    call WriteString 
    ; Reset text color to white
    mov eax, 7                     
    call SetTextColor           

    ; Add 2 newline before admin menu title
    call CrLf 
    call CrLf 

    ; Loop back admin menu
    jmp AdminMenu  ; Use a direct jump instead of loop

   
CompareNamePassword:
    ; Clear the screen
    call ClrScr

    ; Compare username with registered username
    mov edx, offset usernameInput
    mov ecx, offset regUsername
    call CompareStrings
    test eax, eax                  ; eax = 0 if strings match
    jnz LoginFail       ; Jump to LoginFail if username does not match

    ; Compare password with registered password
    mov edx, offset passwordInput
    mov ecx, offset regPassword
    call CompareStrings
    test eax, eax       ; eax = 0 if strings match
    jnz LoginFail       ; Jump to LoginFail if password does not match

    ; If both username and password are correct
    mov eax, 1          ; Set return value to 1 (success)
    jmp LoginSuccess

LoginFail:
    ; If login failed, show invalid message box
     mov edx, offset invalidLogin
     mov  ebx, offset MovieTimeTitle   
     call MsgBox

     ; If login failed, show invalid message
     mov edx, offset invalidLogin
     call WriteString

    ; Add 2 newline after the invalid message
    call CrLf         
    call CrLf         

    ; If login failed, show failed option
    mov edx, offset failedLogin
    call WriteString

    ; Read failed option input
    mov edx, offset usernameInput
    mov ecx, 20 
    call ReadString

     ; Clear the screen
    call ClrScr

    ; Check user option
    cmp byte ptr [usernameInput], '1' ; Check if user chose Forget Password (1)
    je RegisterUser
    cmp byte ptr [usernameInput], '2' ; Check if user chose Try Again (2)
    je LoginUser

    ; If invalid option, show invalid input messange and loop back member status
    mov eax, 14                    
    call SetTextColor              
    mov edx, offset invalidinput
    call WriteString 
    ; Reset text color to white
    mov eax, 7                     
    call SetTextColor           

    ; Add a newline after option input
    call CrLf 
    call CrLf

    jmp LoginFail 

LoginSuccess:
    ; If login was successful, show success message
    mov edx, offset successLogin
    mov  ebx, offset MovieTimeTitle   
    call MsgBox

    jmp UserMenu

UserMenu:

   ; Display greeting messange to user
    mov edx, offset greetingMsg
    call WriteString       

   ; Display the entered username
    mov eax, 3                
    call SetTextColor
    mov edx, OFFSET usernameInput
    call WriteString                     
    mov eax, 7                     
    call SetTextColor

    ; Add 2 newline after username
    call CrLf         
    call CrLf    

    ; Display welcome user message

    mov edx, offset welcomeuserMsg
    call WriteString

     ; Add 3 newline after welcome user message
    call CrLf 
    call CrLf 
    call CrLf 

    ; Display admin menu title
    mov edx, offset usermenuTitle
    call WriteString

    ; Add 2 newline after admin menu title
    call CrLf 
    call CrLf

    ; Display user menu bar
    mov edx, offset usermenubar
    call WriteString

    ; Read user menu bar input
    mov edx, offset userSelection
    mov ecx, 20 
    call ReadString

    ; Clear the screen
    call ClrScr

    ; Check user menu bar option
    cmp byte ptr [userSelection], '1' ; Check if user chose Movie (1)
    je MovieTable
    cmp byte ptr [userSelection], '2' ; Check if user chose Membership (2)
    je Membership
    cmp byte ptr [userSelection], '3' ; Check if user chose Payment (3)
    je TotalPayment
    cmp byte ptr [userSelection], '4' ; Check if user chose Setting (4)
    je Setting 

    ; If invalid option, show invalid input message 
    mov eax, 14                    
    call SetTextColor              
    mov edx, offset invalidinput3
    call WriteString 
    ; Reset text color to white
    mov eax, 7                     
    call SetTextColor           

    ; Add 2 newline before user menu title
    call CrLf 
    call CrLf 

    ; Loop back user menu
    jmp UserMenu  ; Use a direct jump instead of loop

MovieTable:
    ; Display the movie menu title
    mov edx, offset MTitle1 
    call WriteString
    mov edx, offset MTitle2 
    call WriteString
    mov edx, offset MTitle3 
    call WriteString
 
    ; Display the movie table
    mov edx, offset Line1
    call WriteString
    mov edx, offset tableHeader
    call WriteString
    mov edx, offset Line2
    call WriteString
    mov edx, offset tableRow1
    call WriteString
    mov edx, offset tableRow2
    call WriteString
    mov edx, offset tableRow3
    call WriteString
    mov edx, offset tableRow4
    call WriteString
    mov edx, offset tableRow5
    call WriteString
    mov edx, offset tableRow6
    call WriteString
    mov edx, offset tableRow7
    call WriteString
    mov edx, offset tableRow8
    call WriteString
    mov edx, offset tableRow9
    call WriteString
    mov edx, offset tableRow10
    call WriteString
    mov edx, offset Line3
    call WriteString

    ; Add a newline after movie table
    call CrLf

    ; Prompt user to select movies
    mov edx, offset promptMovie
    call WriteString
    call ReadInt

     ; Clear the screen
    call ClrScr

    ; Check movie option
    cmp eax, 1 ; Check if user chose Aquaman  (1)
    je AddPriceMovie1
    cmp eax, 2 ; Check if user chose John Wick  (2)
    je AddPriceMovie2
    cmp eax, 3 ; Check if user chose  Scream VI (3)
    je AddPriceMovie3
    cmp eax, 4 ; Check if user chose Blue Beetle  (4)
    je AddPriceMovie4
    cmp eax, 5 ; Check if user chose Dream Scenario (5)
    je AddPriceMovie5
    cmp eax, 6 ; Check if user chose Evil Dead Rise (6)
    je AddPriceMovie6
    cmp eax, 7 ; Check if user chose  The Monkey King (7)
    je AddPriceMovie7
    cmp eax, 8 ; Check if user chose Deadpool & Wolverine  (8)
    je AddPriceMovie8
    cmp eax, 9 ; Check if user chose Guardians of the Galaxy (9)
    je AddPriceMovie9
    cmp eax, 10 ; Check if user chose The Greatest of All Time (10)
    je AddPriceMovie10

    ; If invalid option, show invalid input message and loop back
    mov eax, 14                    
    call SetTextColor              
    mov edx, offset invalidinput4
    call WriteString 
    ; Reset text color to white
    mov eax, 7                     
    call SetTextColor           

    ; Add 2 newline before movie table
    call CrLf
    call CrLf

    jmp MovieTable


AddPriceMovie1:
    mov edx, OFFSET MovieName1      
    mov eax, PriceMovie1
    jmp StoreFirstPrice

AddPriceMovie2:
    mov edx, OFFSET MovieName2      
    mov eax, PriceMovie2
    jmp StoreFirstPrice

AddPriceMovie3:
    mov edx, OFFSET MovieName3
    mov eax, PriceMovie3
    jmp StoreFirstPrice

AddPriceMovie4:
    mov edx, OFFSET MovieName4
    mov eax, PriceMovie4
    jmp StoreFirstPrice

AddPriceMovie5:
    mov edx, OFFSET MovieName5
    mov eax, PriceMovie5
    jmp StoreFirstPrice

AddPriceMovie6:
    mov edx, OFFSET MovieName6
    mov eax, PriceMovie6
    jmp StoreFirstPrice

AddPriceMovie7:
    mov edx, OFFSET MovieName7
    mov eax, PriceMovie7
    jmp StoreFirstPrice

AddPriceMovie8:
    mov edx, OFFSET MovieName8
    mov eax, PriceMovie8
    jmp StoreFirstPrice

AddPriceMovie9:
    mov edx, OFFSET MovieName9   
    mov eax, PriceMovie9
    jmp StoreFirstPrice

AddPriceMovie10:
    mov edx, OFFSET MovieName10
    mov eax, PriceMovie10
    jmp StoreFirstPrice

StoreFirstPrice:
    mov MoviePrice, eax   ; Store the first price
    mov ShowMovieName, edx 
    jmp Membership

Membership: 
    ; Display describle of membership
    mov edx, offset describleMbs
    call WriteString

    ; Add a newline after describle of membership message
     call CrLf

    ; Display membership message
    mov edx, offset membershipMsg
    call WriteString

    ; Add 2 newline after membership message
    call CrLf
    call CrLf

    ; Display membership option
    mov edx, offset promptMembership
    call WriteString

    ; Read membership selection input
    mov edx, offset memberSelection
    mov ecx, 2 
    call ReadString

    ; Clear the screen
    call ClrScr

    ; Check membership option
    cmp byte ptr [memberSelection], '1' ; Check if user chose Yes (1)
    je MembershipTable
    cmp byte ptr [memberSelection], '2' ; Check if user chose No (2)
    je MovieTotalPrice
    
    ; If invalid option, show invalid input messange and loop back member status
    mov eax, 14                    
    call SetTextColor              
    mov edx, offset invalidinput
    call WriteString 
    ; Reset text color to white
    mov eax, 7                     
    call SetTextColor           

    ; Add 2 newline before describle of membership
    call CrLf
    call CrLf

    jmp Membership 

MembershipTable:
    ; Display the membership package table title
    mov edx, offset membershipTitle
    call WriteString

    ; Add a newline before movie table
    call CrLf
     
    ; Display the membership package table
    mov edx, offset L1
    call WriteString
    mov edx, offset tableMembership
    call WriteString
    mov edx, offset L2
    call WriteString
    mov edx, offset row1
    call WriteString
    mov edx, offset row2
    call WriteString
    mov edx, offset row3
    call WriteString
    mov edx, offset L3
    call WriteString

    ; Add a newline after package table
    call CrLf

    ; Prompt user to select membership package
    mov edx, offset packageMembership
    call WriteString
    call ReadDec      

    ; Clear the screen
    call ClrScr

    ; Check membership package option
    cmp eax, 1 ; Check if user chose Weekly Package (1)
    je AddPackagePrice1
    cmp eax, 2 ; Check if user chose Montly Package (2)
    je AddPackagePrice2
    cmp eax, 3 ; Check if user chose Yearly Package (3)
    je AddPackagePrice3

    ; If invalid option, show invalid input message and loop back
    mov eax, 14                    
    call SetTextColor              
    mov edx, offset invalidinput2
    call WriteString 
    ; Reset text color to white
    mov eax, 7                     
    call SetTextColor        

    ; Add 2 newline before membership package table
    call CrLf
    call CrLf

    jmp MembershipTable

AddPackagePrice1:
    mov edx, OFFSET NamePackage1
    mov eax, PricePackage1
    jmp GetQuantity

AddPackagePrice2:
    mov edx, OFFSET NamePackage2
    mov eax, PricePackage2
    jmp GetQuantity

AddPackagePrice3:
    mov edx, OFFSET NamePackage3
    mov eax, PricePackage3
    jmp GetQuantity

GetQuantity:
   ; Store quantit
    mov ShowNamePackage, edx
    mov PackagePrice, eax   

   ; Display the membership package table title
    mov edx, offset membershipTitle
    call WriteString

    ; Add a newline before movie table
    call CrLf
     
    ; Display the membership package table
    mov edx, offset L1
    call WriteString
    mov edx, offset tableMembership
    call WriteString
    mov edx, offset L2
    call WriteString
    mov edx, offset row1
    call WriteString
    mov edx, offset row2
    call WriteString
    mov edx, offset row3
    call WriteString
    mov edx, offset L3
    call WriteString

    ; Add a newline after package table
    call CrLf

    ; Prompt user to select membership package
     mov edx, offset pricePackage
    call WriteString
    call WriteDec

    ; Add 2 newline after membership package 
    call CrLf
    call CrLf

    ; Store the second price
    mov PackagePrice, eax 

    ; Ask for membership package quantity
     mov edx, OFFSET quantityInput
    call WriteString
    call ReadDec                       

    ; Store quantit
     mov QuantityPackage, eax                             

    ; Clear the screen
    call ClrScr  

    jmp TotalPayment

MovieTotalPrice:
    ; Clear the screen
    call ClrScr  

    ; Display the 'Dear'
    mov edx, offset DearcustomerMsg
    call WriteString

    ; Display the username
    mov eax, 3                
    call SetTextColor
    mov edx, OFFSET usernameInput
    call WriteString                     
    mov eax, 7                     
    call SetTextColor

    ; Display the ','
    mov edx, offset DearcustomerMsg1
    call WriteString

    ; Add 2 newline after dear username
     call CrLf 
     call CrLf

    ; Display the transaction messange
    mov edx, offset TransactionMsg
    call WriteString

    ; Add a newline after transaction messange
     call CrLf

    ; Display a line
    mov edx, offset lineMsg
    call WriteString

    ; Add a newline after a line
    call CrLf

    ; Display the movie name
    mov edx, OFFSET movieName
    call WriteString
    mov edx, ShowMovieName                  
    call WriteString    

    ; Add 2 newline after movie name
    call CrLf   
    call CrLf  

    ; Display the movie price
    mov edx, offset MoviePriceMsg
    call WriteString
    mov eax, MoviePrice
    call WriteDec    

    ; Add 2 newline after movie price
    call CrLf   
    call CrLf  

    ; Calculate total price
    mov eax, PackagePrice
    imul eax, QuantityPackage   
    add eax, MoviePrice

    ; Store total price
    mov TotalPrice, eax 

    ; Display total price
    mov edx, offset totalPriceMsg
    call WriteString
    mov eax, TotalPrice
    call WriteDec      

     ; Add 2 newline after total price
    call CrLf
    call CrLf

     ; Add a newline after total price
    call CrLf

    ; ask for continue
    jmp continue

TotalPayment:

    ; Display the 'Dear'
    mov edx, offset DearcustomerMsg
    call WriteString

    ; Display the username
    mov eax, 3                
    call SetTextColor
    mov edx, OFFSET usernameInput
    call WriteString                     
    mov eax, 7                     
    call SetTextColor

    ; Display the ','
    mov edx, offset DearcustomerMsg1
    call WriteString

    ; Add 2 newline after dear username
     call CrLf 
     call CrLf

    ; Display the transaction messange
    mov edx, offset TransactionMsg
    call WriteString

    ; Add a newline after transaction messange
     call CrLf

    ; Display a line
    mov edx, offset lineMsg
    call WriteString

    ; Add a newline after a line
    call CrLf

    ; Display the movie name
    mov edx, OFFSET movieName
    call WriteString
    mov edx, ShowMovieName                  
    call WriteString               

    ; Add 2 newline after movie name
    call CrLf   
    call CrLf  

    ; Display the movie price
    mov edx, offset MoviePriceMsg
    call WriteString
    mov eax, MoviePrice
    call WriteDec    

    ; Add 2 newline after movie price
    call CrLf   
    call CrLf  

    ; Display the package name
    mov edx, OFFSET namePackageMsg
    call WriteString
    mov edx, ShowNamePackage                  
    call WriteString               

    ; Add 2 newline after package name
    call CrLf   
    call CrLf

   ; Display quantity of package
    mov edx, OFFSET QualityMsg
    call WriteString
    mov eax, QuantityPackage                ; Load quantity
    call WriteDec                           ; Display quantity
    
    ; Add 2 newline after membership package quality
    call CrLf   
    call CrLf  

    ; Display the membership package price
    mov edx, offset PackagePriceMsg
    call WriteString
    mov eax, PackagePrice
    call WriteDec     

    ; Add 2 newline after package price
    call CrLf
    call CrLf  

    ; Calculate total price
    mov eax, PackagePrice
    imul eax, QuantityPackage   
    add eax, MoviePrice

    ; Store total price
    mov TotalPrice, eax 

    ; Display total price
    mov edx, offset totalPriceMsg
    call WriteString
    mov eax, TotalPrice
    call WriteDec      

     ; Add 2 newline after total price
    call CrLf
    call CrLf

    ; Read for user payment option
    mov edx, offset paidMsg
    call WriteString
    mov edx, offset paidSelection
    mov ecx, 2
    call ReadString

     ; Clear the screen
    call ClrScr
  
    ; Check user option
    cmp byte ptr [paidSelection], '1' ; Check if user chose Yes (1)
    je TNGlogin
    cmp byte ptr [paidSelection], '2' ; Check if user chose Cancel (2)
    je UserMenu

    ; If invalid option, show invalid input messange and loop back DisplayTotalPrice
    mov eax, 14                    
    call SetTextColor              
    mov edx, offset invalidinput
    call WriteString 
    ; Reset text color to white
    mov eax, 7                     
    call SetTextColor           

    ; Add 2 newline after invalid message
    call CrLf
    call CrLf

    jmp TotalPayment 

TNGlogin:

    ; Display the tng title
    mov edx, offset tngTitle
    call WriteString

    ; Add 2 newline after tng title
    call CrLf   
    call CrLf

    ; Read the username
    mov edx, offset tngUsernameMsg
    call WriteString
    mov edx, offset userInput
    mov ecx, 20
    call ReadString

    ; Add a newline after username
    call CrLf   

    ; Read the pin number
    mov edx, offset pinnumber
    call WriteString
    mov edx, offset userInput
    mov ecx, 6
    call ReadString

     ; Clear the screen
    call ClrScr

    jmp TNGpayment

TNGpayment:
    ; Greeting tng user
    mov edx, offset greetingMsg
    call WriteString
    mov edx, offset userInput
    call WriteString

   ; Add 2 newline after greeting message
    call CrLf 
    call CrLf 

    ; Display the transaction messange from MovieTime
    mov edx, offset movietimepaid
    call WriteString

    ; Add 2 newline after transaction messange
    call CrLf 
    call CrLf

    ; Display the total price
    mov edx, offset movietimetotal
    call WriteString
    mov eax, TotalPrice
    call WriteDec  

     ; Add 2 newline after total price
    call CrLf 
    call CrLf

    ; Display the confirmed message to user
    mov edx, offset confirmMsg
    call WriteString
    mov edx, offset confirmSelection
    mov ecx, 2
    call ReadString

      ; Clear the screen
    call ClrScr 

    ; Check user confirem option
    cmp byte ptr [confirmSelection], '1' ; Check if user chose Yes (1)
    je SuccessPaid
    cmp byte ptr [confirmSelection], '2' ; Check if user chose No (2)
    je FailedPaid

    ; If invalid option, show invalid input messange and loop back member status
   mov eax, 14                    
    call SetTextColor              
    mov edx, offset invalidinput
    call WriteString 
    ; Reset text color to white
    mov eax, 7                     
    call SetTextColor           

    ; Add 2 newline after invalid message
    call CrLf
    call CrLf

    jmp TNGpayment 


SuccessPaid:
    ; Display success transaction message
    mov edx, offset transacSuccessMsg
    mov  ebx, offset tngTitleMsg   
    call MsgBox

    jmp continueornot

continueornot:

    ; Display thank message
    mov edx, offset thankMsg
    call WriteString

     ; Display message ask user want to continue or not
    mov edx, offset continueMsg
    call WriteString
    mov edx, offset continueSelection
    mov ecx, 2
    call ReadString

     ; Clear the screen
    call ClrScr
  
    ; Check user option
    cmp byte ptr [continueSelection], 'y' 
    je UserMenu
    cmp byte ptr [continueSelection], 'n' 
    je ExitProgram

    ; If invalid option, show invalid input messange and loop back member status
   mov eax, 14                    
    call SetTextColor              
    mov edx, offset invalidinput7
    call WriteString 
    ; Reset text color to white
    mov eax, 7                     
    call SetTextColor           

    ; Add 2 newline after invalid message
    call CrLf
    call CrLf

    loop continueornot 

continue:

   ; Add a newline after invalid message
    call CrLf

    ; Display message ask user want to continue or not
    mov edx, offset continueMsg
    call WriteString
    mov edx, offset conSelection
    mov ecx, 2
    call ReadString

     ; Clear the screen
    call ClrScr
  
    ; Check user option
    cmp byte ptr [conSelection], 'y' 
    je UserMenu
    cmp byte ptr [conSelection], 'n' 
    je ExitProgram

    ; If invalid option, show invalid input messange and loop back member status
    mov eax, 14                    
    call SetTextColor              
    mov edx, offset invalidinput7
    call WriteString 
    ; Reset text color to white
    mov eax, 7                     
    call SetTextColor           

    ; Add 2 newline after invalid message
    call CrLf
    call CrLf

    loop continue 

FailedPaid:
    ; Clear the screen
    call ClrScr 

    ; Display success transaction message
    mov edx, offset transacFaildMsg
    mov  ebx, offset tngTitleMsg   
    call MsgBox

    jmp UserMenu

Setting:
 ; Display username
    mov edx, offset username
    call WriteString
    mov eax, 3                
    call SetTextColor
    mov edx, OFFSET usernameInput
    call WriteString                     
    mov eax, 7                     
    call SetTextColor

     ; Add 2 newline after username
    call CrLf
    call CrLf

    ; Display payment record
    mov edx, offset payment
    call WriteString
    mov eax, TotalPrice
    call WriteDec 

    ; Add 2 newline after payment
    call CrLf
    call CrLf

    ; Display sign out message
    mov edx, offset signoutMsg
    call WriteString
    mov edx, offset sigoutInput
    mov ecx, 2
    call ReadString

    ; Clear the screen
    call ClrScr
    
    ; Check user input
    cmp byte ptr [sigoutInput], 'Y'
    je Questionandanswer
    cmp byte ptr [sigoutInput], 'N'
    je ClearScreen

    ; Display invalid message
    mov eax, 14                    
    call SetTextColor              
    mov edx, offset invalidinput6
    call WriteString 
    ; Reset text color to white
    mov eax, 7                     
    call SetTextColor           

    ; Add 2 newline before invalid message
    call CrLf
    call CrLf

    jmp Setting  ; Loop back to settings

ClearScreen:
   ; Clear the screen
    call ClrScr

    jmp UserMenu

Questionandanswer:

   ; Display rate question
    mov edx, offset rateQuestion
    call WriteString

    ; Add 2 newline after rate question
    call CrLf
    call CrLf

    ; Read rate answer
    mov edx, offset answerRate
    call WriteString
    mov edx, offset rateInput
    mov ecx, 2
    call ReadString

    ; Clear the screen
    call ClrScr

    ; Check user input
    cmp byte ptr [rateInput], '1'
    je Reviewandrate
    cmp byte ptr [rateInput], '2'
    je SignOut

    ; Display invalid message
    mov eax, 14                    
    call SetTextColor              
    mov edx, offset invalidinput
    call WriteString 
    ; Reset text color to white
    mov eax, 7                     
    call SetTextColor           

    ; Add 2 newline before invalid message
    call CrLf
    call CrLf

    jmp Questionandanswer  ; Loop back to question and answer

Reviewandrate:
   ; Clear the screen
    call ClrScr

   ; Read comment
    mov edx, offset commentMsg
    call WriteString
    mov edx, offset cmttInput
    mov ecx, 51
    call ReadString

     ; Add 2 newline before comment message
    call CrLf
    call CrLf

    ; Read rate answer
    mov edx, offset ratingMsg
    call WriteString
    mov edx, offset ratingInput
    mov ecx, 6
    call ReadString

     ; Add 2 newline after rating message
    call CrLf
    call CrLf

    ; Display thanks message
    mov edx, offset thankyouMsg
    call WriteString

    jmp SignOut  

Feedback:
   ; Clear the screen
    call ClrScr

   ; Display feedback titile
    mov edx, offset FeedbackTitle
    call WriteString

     ; Add 2 newline before comment message
    call CrLf
    call CrLf

    ; Display username
    mov edx, offset MovietimeUsername
    call WriteString
    mov eax, 3                
    call SetTextColor
    mov edx, OFFSET usernameInput
    call WriteString                     
    mov eax, 7                     
    call SetTextColor

     ; Add 2 newline after username
    call CrLf
    call CrLf

   ; Display review
    mov edx, offset userReview
    call WriteString
    mov edx, OFFSET cmttInput
    call WriteString   
  
    ; Add 2 newline after review
    call CrLf
    call CrLf

    ; Display rating
    mov edx, offset userRating
    call WriteString

    ; Get the length of the input string
    mov eax, OFFSET ratingInput
    call StrLength
    mov ecx, eax  ; Length of the string in ecx


    ; Loop through each character in the input string
    mov ebx, 0  ; Index to access buffer

nextcharacter:
   ; Check for the null terminator
    cmp byte ptr [ratingInput + ebx], 0  
    je donePrintstar

    ; Print an asterisk
    mov  al,'*'
    call WriteChar
     
    ; Move to the next character
    inc ebx

    ; Repeat for the next character
    jmp nextcharacter                   
    
donePrintstar:
   ; Add 2 newline after username
    call CrLf
    call CrLf

    ; Wait for a message or input
    call WaitMsg    
    
    ; Clear the screen
    call ClrScr

    ; Jump to AdminMenu 
    jmp AdminMenu                        

SignOut:

   ; Clear the screen
    call ClrScr

   ; Display signed out message
    mov edx, offset signedOutMsg
    mov  ebx, offset MovieTimeTitle   
    call MsgBox

    ; Return to main menu
    jmp MainMenu

PaymentList:
       
    ; Clear the screen
    call ClrScr

    mov edx, offset username
    call WriteString
    mov eax, 3                
    call SetTextColor
    mov edx, OFFSET usernameInput
    call WriteString                     
    mov eax, 7                     
    call SetTextColor

    ; Display total price
    mov edx, offset totalPriceMsg
    call WriteString
    mov eax, TotalPrice
    call WriteDec     

      ; Add 2 newline after total price
    call CrLf
    call CrLf
    call WaitMsg
     
     jmp AdminMenu

    

  

ExitProgram:

   ; Display thank message
    mov edx, offset thankMsg
    call WriteString

     ; Add 2 newline after thanks message
    call CrLf
    call CrLf


    ; Exit the program
    invoke ExitProcess, 0
main endp

;compare user and password between register and login
strcmp:
    ; Compare two null-terminated strings
    ; ESI: pointer to string1
    ; EDI: pointer to string2
    ; Returns: 0 if equal, non-zero otherwise
    xor eax, eax         ; clear eax (return value)

next_char:
    mov al, [esi]        ; load byte from string1
    mov bl, [edi]        ; load byte from string2
    cmp al, bl           ; compare characters
    jne not_equal        ; if not equal, jump
    test al, al          ; check for end of string (null terminator)
    jz equal             ; if end of string, they are equal
    inc esi              ; move to next character in string1
    inc edi              ; move to next character in string2
    jmp next_char        ; repeat comparison

not_equal:
    mov eax, 1           ; strings are not equal
    ret

equal:
    ret


; verify admin account
; Procedure to compare two null-terminated strings
; Returns: eax = 0 if strings are equal, non-zero otherwise
CompareStrings proc
    ; Parameters: edx = address of first string, ecx = address of second string
    push ebx            ; Save registers
    push edi
    push esi

    mov esi, edx        ; esi = address of first string
    mov edi, ecx        ; edi = address of second string

CompareLoop:
    lodsb               ; Load byte from string at esi into al
    scasb               ; Compare byte in al with byte at edi
    jne StringsNotEqual ; Jump if bytes are not equal
    test al, al         ; Check if end of string (null terminator)
    jz StringsEqual     ; Jump if end of string is reached
    jmp CompareLoop     ; Continue comparing

StringsNotEqual:
    mov eax, 1          ; Strings are not equal
    jmp Done

StringsEqual:
    mov eax, 0          ; Strings are equal

Done:
    pop esi             ; Restore registers
    pop edi
    pop ebx
    ret
CompareStrings endp

end main
