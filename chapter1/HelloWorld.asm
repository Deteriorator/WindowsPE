;------------------------------------------------------------------------------
; 功能： Win32 汇编程序
; 作者： Leon
; 日期： 2022-01-05
;------------------------------------------------------------------------------

; ml -c -coff HelloWorld.asm
; link -subsystem:windows HelloWorld.obj

    .386
    .model flat,stdcall
    option casemap:none

include     windows.inc 
include     user32.inc 
includelib  user32.lib
include     kernel32.inc 
includelib  kernel32.lib 

; 数据段
    .data
szText  db  'HelloWorld',0

; 代码段
    .code
start:
    invoke MessageBox,NULL,offset szText,NULL,MB_OK
    invoke ExitProcess,NULL
end start
