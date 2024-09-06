.386
include Irvine32.inc
.model small
.stack 100h

.data
    welcomeMsg      db "Welcome to MovieTime", 0
    promptOption    db "Choose an option: (1) Register (2) Login: ", 0
    promptUsername  db "Enter username: ", 0
    promptPassword  db "Enter password: ", 0
    promptRegister  db ">>>>>>>> REGISTER <<<<<<<<", 0
    promptLogin     db ">>>>>>>> LOGIN <<<<<<<<", 0
    invalidLogin    db "Invalid username or password!", 0
    failedLogin     db "(1) Forget Password (2) Try Again: ", 0
    successLogin    db "Login successful!", 0
    registeredMsg   db "Registration successful! You can login now.", 0
    usernameBuffer  db 50 dup(?)    ; Buffer for username input
    passwordBuffer  db 50 dup(?)    ; Buffer for password input
    regUsername     db 50 dup(?)    ; Buffer for registered username
    regPassword     db 50 dup(?)    ; Buffer for registered password

.code
main proc
    ; Display welcome message
    mov edx, offset welcomeMsg
    call WriteString
    call CrLf         ; Add a newline for readability
    call CrLf         ; Add a newline for readability

FirstMenu:
    ; Prompt user to choose between register and login
    mov edx, offset promptOption
    call WriteString
    mov edx, offset usernameBuffer
    mov ecx, 50 
    call ReadString

    ; Add a newline after password input
    call CrLf 

    ; Check user option
    cmp byte ptr [usernameBuffer], '1' ; Check if user chose Register (1)
    je RegisterUser
    cmp byte ptr [usernameBuffer], '2' ; Check if user chose Login (2)
    je LoginUser

    ; If invalid option, exit the program
    jmp ExitProgram

 
    

RegisterUser:
    ; Register a new user
    ; Prompt for new username
    mov edx, offset promptRegister
    call WriteString

    call CrLf                    ; Add a newline after password input

    mov edx, offset promptUsername
    call WriteString
    mov edx, offset regUsername
    mov ecx, 50 
    call ReadString

    ; Prompt for new password
    mov edx, offset promptPassword
    call WriteString
    mov edx, offset regPassword
    mov ecx, 50 
    call ReadString

    ; Add a newline after password input
    call CrLf
    ; Add a newline after password input
    call CrLf 

    ; Display registration successful message
    mov edx, offset registeredMsg
    call WriteString
    call CrLf         ; Add a newline after the registration message
    call CrLf         ; Add a newline after the registration message

    ; Now go to login procedure
    jmp LoginUser

LoginUser:
    ; Login procedure
    ; Prompt for username
    mov edx, offset promptLogin
    call WriteString
    
    call CrLf                    ; Add a newline after password input

    mov edx, offset promptUsername
    call WriteString
    mov edx, offset usernameBuffer
    mov ecx, 50 
    call ReadString

    ; Prompt for password
    mov edx, offset promptPassword
    call WriteString
    mov edx, offset passwordBuffer
    mov ecx, 50 
    call ReadString

    ; Add a newline after password input
    call CrLf
    ; Add a newline after password input
    call CrLf 

    ; Compare username with registered username
    mov edx, offset usernameBuffer
    mov ecx, offset regUsername
    call CompareStrings
    test eax, eax       ; eax = 0 if strings match
    jnz LoginFail       ; Jump to LoginFail if username does not match

    ; Compare password with registered password
    mov edx, offset passwordBuffer
    mov ecx, offset regPassword
    call CompareStrings
    test eax, eax       ; eax = 0 if strings match
    jnz LoginFail       ; Jump to LoginFail if password does not match

    ; If both username and password are correct
    mov eax, 1          ; Set return value to 1 (success)
    jmp LoginSuccess

LoginFailOption:
    mov edx, offset failedLogin
    call WriteString
    mov edx, offset usernameBuffer
    mov ecx, 50 
    call ReadString

    ; Add a newline after password input
    call CrLf 

    ; Check user option
    cmp byte ptr [usernameBuffer], '1' ; Check if user chose Register (1)
    je RegisterUser
    cmp byte ptr [usernameBuffer], '2' ; Check if user chose Login (2)
    je LoginUser

    ; If invalid option, exit the program
    jmp ExitProgram



LoginFail:
    ; If login was fail, show failed message
    mov edx, offset invalidLogin
    call WriteString
    call CrLf         ; Add a newline after the invalid login message
    jmp LoginFailOption

LoginSuccess:
    ; If login was successful, show success message
    mov edx, offset successLogin
    call WriteString
    call CrLf         ; Add a newline after the success message

ExitProgram:
    ; Exit the program
    invoke ExitProcess, 0
main endp

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
