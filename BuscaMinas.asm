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


section. text