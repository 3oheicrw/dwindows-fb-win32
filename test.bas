#cmdline "-s gui"
#include once "dw.bi"

dim mainwindow as HWND
dim flStyle as culong

dw_init(true, __FB_ARGC__, __FB_ARGV__)
flStyle = DW_FCF_SYSMENU or DW_FCF_TITLEBAR or DW_FCF_TASKLIST or DW_FCF_DLGBORDER
mainwindow = dw_window_new(HWND_DESKTOP, "dwindows test UTF8 中国語 (繁体) cañón", flStyle or DW_FCF_SIZEBORDER or DW_FCF_MINMAX)
dw_signal_connect(mainwindow, DW_SIGNAL_DELETE, @dw_main_quit, @mainwindow)
dw_window_set_size(mainwindow, 640, 550)
dw_window_show(mainwindow)
dw_main()
