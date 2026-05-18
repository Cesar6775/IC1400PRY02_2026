section. data
    msg_bienvenida db "BIENVENIDO A BUSCAMINAS", 10, 0
    len_bienvenida equ $ - msg_bienvenida

    msg_menu db 10, "Seleccione la dificultad:", 10, "1. Principiante (5 minas)", 10, "2. Intermedio (10 minas)", 10, "Experto (15 minas)", 10, "Opcion: ", 0
    len_menu equ $ - msg_menu

    msg_error db 10, "Opcion invalida. Por favor, ingrese 1,2,3", 10, 0
    len_error equ $ - msg_error

    msg_conf_p db 10, "Modo principiante seleccionado con exito", 10, 0
    len_conf_p $ - msg_conf_p

    msg_conf_i db 10, "Modo intermedio seleccionado con exito", 10, 0
    len_conf_i equ $ - msg_conf_i

    msg_conf_e db 10, "Modo experto seleccionado con exito", 10, 0
    len_conf_e equ $ - msg_conf_e

section .bss
    ;reserva 2 bytes para la entrada del teclado (caracter y enter)
    buffer_entrada resb 2

    ; guarda el numero de minas configurado
    minas_totales resb 1

section. text
    global inicio

inicio:
    ; muestra el menu de bienvenida
    mov eax, 4
    mov eax, 1
    mov exc, msg_bienvenida
    mov edx, len_bienvenida
    int 0x80

menu_dificultad:
    mov eax, 4
    mov ebx, 1
    mov ecx, msg_menu
    mov edx, len_menu
    int 0x80

    ; entrada del usuario

    mov eax, 3
    mov ebx, 0
    mov ecx, buffer_entrada
    mov edx, 2
    int 0x80

    mov al, [buffer_entrada]

    ; presiono 1
    cmp al, '1'
    je .selecciono_principiante

    ; presiono 2
    cmp al, '2'
    je .selecciono_intermedio

    ; presiono 3
    cmp al, '3'
    je .selecciono_experto

    mov eax, 4
    mov ebx, 1
    mov ecx, msg_error
    mov edx, len_error
    int 0x80

    jmp menu_dificultad