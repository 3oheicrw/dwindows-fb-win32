#pragma once

#inclib "dw"

#include once "crt/long.bi"
#include once "win/winsock2.bi"
#include once "windows.bi"
#include once "win/commctrl.bi"

'' The following symbols have been renamed:
''     constant DW_MENU_POPUP => DW_MENU_POPUP_

extern "C"

const DW_MAJOR_VERSION = 3
const DW_MINOR_VERSION = 2
const DW_SUB_VERSION = 0
#define DW_HOME_URL "http://dwindows.netlabs.org"
const DW_CLR_BLACK = 0
const DW_CLR_DARKRED = 1
const DW_CLR_DARKGREEN = 2
const DW_CLR_BROWN = 3
const DW_CLR_DARKBLUE = 4
const DW_CLR_DARKPINK = 5
const DW_CLR_DARKCYAN = 6
const DW_CLR_PALEGRAY = 7
const DW_CLR_DARKGRAY = 8
const DW_CLR_RED = 9
const DW_CLR_GREEN = 10
const DW_CLR_YELLOW = 11
const DW_CLR_BLUE = 12
const DW_CLR_PINK = 13
const DW_CLR_CYAN = 14
const DW_CLR_WHITE = 15
const DW_CLR_DEFAULT = 16
#define DW_SIGNAL_CONFIGURE "configure_event"
#define DW_SIGNAL_KEY_PRESS "key_press_event"
#define DW_SIGNAL_BUTTON_PRESS "button_press_event"
#define DW_SIGNAL_BUTTON_RELEASE "button_release_event"
#define DW_SIGNAL_MOTION_NOTIFY "motion_notify_event"
#define DW_SIGNAL_DELETE "delete_event"
#define DW_SIGNAL_EXPOSE "expose_event"
#define DW_SIGNAL_CLICKED "clicked"
#define DW_SIGNAL_ITEM_ENTER "container-select"
#define DW_SIGNAL_ITEM_CONTEXT "container-context"
#define DW_SIGNAL_ITEM_SELECT "tree-select"
#define DW_SIGNAL_LIST_SELECT "item-select"
#define DW_SIGNAL_SET_FOCUS "set-focus"
#define DW_SIGNAL_VALUE_CHANGED "value_changed"
#define DW_SIGNAL_SWITCH_PAGE "switch-page"
#define DW_SIGNAL_COLUMN_CLICK "click-column"
#define DW_SIGNAL_TREE_EXPAND "tree-expand"
#define DW_SIGNAL_HTML_CHANGED "html-changed"
#define DW_SIGNAL_HTML_RESULT "html-result"
const DW_MIS_ENABLED = 1
const DW_MIS_DISABLED = 1 shl 1
const DW_MIS_CHECKED = 1 shl 2
const DW_MIS_UNCHECKED = 1 shl 3
const DW_GRAV_TOP = 0
const DW_GRAV_LEFT = 0
const DW_GRAV_CENTER = 1
const DW_GRAV_RIGHT = 2
const DW_GRAV_BOTTOM = 2
const DW_GRAV_OBSTACLES = 1 shl 10
const DW_SIZE_AUTO = -1
const _DW_TYPE_BOX = 0
const _DW_TYPE_ITEM = 1
const _DW_SPLITBAR_WIDTH = 4
const _DW_SIZE_STATIC = 0
const _DW_SIZE_EXPAND = 1

type _user_data
	next_ as _user_data ptr
	data_ as any ptr
	varname as zstring ptr
end type

type UserData as _user_data
#define DW_DT_LEFT SS_LEFTNOWORDWRAP
const DW_DT_QUERYEXTENT = 0
const DW_DT_UNDERSCORE = 0
const DW_DT_STRIKEOUT = 0
const DW_DT_TEXTATTRS = 0
const DW_DT_EXTERNALLEADING = 0
#define DW_DT_CENTER SS_CENTER
#define DW_DT_RIGHT SS_RIGHT
const DW_DT_TOP = 0
const DW_DT_VCENTER = 1 shl 29
const DW_DT_BOTTOM = 0
const DW_DT_HALFTONE = 0
const DW_DT_MNEMONIC = 0
const DW_DT_WORDBREAK = 1 shl 28
const DW_DT_ERASERECT = 0
const DW_FCF_CLOSEBUTTON = 0
#define DW_FCF_TITLEBAR WS_CAPTION
#define DW_FCF_SYSMENU WS_SYSMENU
const DW_FCF_MENU = 0
#define DW_FCF_SIZEBORDER WS_THICKFRAME
#define DW_FCF_MINBUTTON WS_MINIMIZEBOX
#define DW_FCF_MAXBUTTON WS_MAXIMIZEBOX
#define DW_FCF_MINMAX (WS_MINIMIZEBOX or WS_MAXIMIZEBOX)
#define DW_FCF_DLGBORDER WS_DLGFRAME
#define DW_FCF_BORDER WS_BORDER
const DW_FCF_TASKLIST = 1 shl 1
const DW_FCF_NOMOVEWITHOWNER = 0
const DW_FCF_SYSMODAL = 0
#define DW_FCF_HIDEBUTTON WS_MINIMIZEBOX
#define DW_FCF_HIDEMAX (WS_MINIMIZEBOX or WS_MAXIMIZEBOX)
const DW_FCF_AUTOICON = 0
#define DW_FCF_MAXIMIZE WS_MAXIMIZE
#define DW_FCF_MINIMIZE WS_MINIMIZE
const DW_FCF_COMPOSITED = 1
const DW_FCF_TEXTURED = 0
const DW_FCF_FULLSCREEN = 1 shl 2
const DW_CFA_BITMAPORICON = 1
const DW_CFA_STRING = 1 shl 1
const DW_CFA_ULONG = 1 shl 2
const DW_CFA_TIME = 1 shl 3
const DW_CFA_DATE = 1 shl 4
const DW_CFA_CENTER = 1 shl 5
const DW_CFA_LEFT = 1 shl 6
const DW_CFA_RIGHT = 1 shl 7
const DW_CFA_STRINGANDICON = 1 shl 8
const DW_CFA_HORZSEPARATOR = 0
const DW_CFA_SEPARATOR = 0
#define DW_CRA_SELECTED LVNI_SELECTED
#define DW_CRA_CURSORED LVNI_FOCUSED
const DW_CR_RETDATA = 1 shl 10
#define DW_LS_MULTIPLESEL LBS_MULTIPLESEL
const DW_LIT_NONE = -1
const DW_MLE_CASESENSITIVE = 1
#define DW_BS_NOBORDER BS_FLAT
const DW_POINTER_DEFAULT = 0
const DW_POINTER_ARROW = 32512
const DW_POINTER_CLOCK = 32514
const DW_POINTER_QUESTION = 32651
#define DW_MB_OK MB_OK
#define DW_MB_OKCANCEL MB_OKCANCEL
#define DW_MB_YESNO MB_YESNO
#define DW_MB_YESNOCANCEL MB_YESNOCANCEL
#define DW_MB_WARNING MB_ICONWARNING
#define DW_MB_ERROR MB_ICONERROR
#define DW_MB_INFORMATION MB_ICONINFORMATION
#define DW_MB_QUESTION MB_ICONQUESTION
const KC_CTRL = 1
const KC_SHIFT = 1 shl 1
const KC_ALT = 1 shl 2

type _color
	fore as long
	back as long
	combo as HWND
	buddy as HWND
	style as ULONG
	rect as RECT
	clickdefault as HWND
	hbrush as HBRUSH
	hfont as HFONT
	hmenu as HMENU
	fontname as zstring * 128
	pOldProc as WNDPROC
	root as UserData ptr
end type

type ColorInfo as _color

type _notebookpage
	cinfo as ColorInfo
	item as TC_ITEM
	hwnd as HWND
	realid as long
end type

type NotebookPage as _notebookpage
type HMTX as HANDLE
type HEV as HANDLE
type HMOD as HANDLE
type HSHM as HANDLE
type HICN as HANDLE

type _container
	cinfo as ColorInfo
	flags as ULONG ptr
	columns as ULONG
	odd as COLORREF
	even as COLORREF
end type

type ContainerInfo as _container

type _hpixmap
	width_ as culong
	height as culong
	hbm as HBITMAP
	hdc as HDC
	transcolor as culong
	handle as HWND
	bits as any ptr
	depth as culong
	font as HFONT
end type

type HPIXMAP as _hpixmap ptr
type HMENUI as HWND

type _item
	type_ as long
	hwnd as HWND
	width_ as long
	height as long
	origwidth as long
	origheight as long
	hsize as long
	vsize as long
	pad as long
end type

type Item as _item

type _box
	cinfo as ColorInfo
	fullscreen as long
	count as long
	type_ as long
	hsize as long
	vsize as long
	pad as long
	grouppadx as long
	grouppady as long
	grouphwnd as HWND
	defaultitem as HWND
	usedpadx as long
	usedpady as long
	minheight as long
	minwidth as long
	width_ as long
	height as long
	flags as culong
	items as _item ptr
end type

type Box as _box

type _CDATE
	day_ as UCHAR
	month_ as UCHAR
	year_ as USHORT
end type

type CDATE as _CDATE

type _CTIME
	hours as UCHAR
	minutes as UCHAR
	seconds as UCHAR
	ucReserved as UCHAR
end type

type CTIME as _CTIME
type DWTID as culong
#define DW_DIR_SEPARATOR asc(!"\\")
type HTIMER as long
const DW_DARK_MODE_DISABLED = 0
const DW_DARK_MODE_BASIC = 1
const DW_DARK_MODE_FULL = 2
const DW_DARK_MODE_FORCED = 3
const _DW_APP_ID_SIZE = 100
const _DW_ENV_STRING_SIZE = 257

type _dwenv
	osName as zstring * 257
	buildDate as zstring * 257
	buildTime as zstring * 257
	MajorVersion as short
	MinorVersion as short
	MajorBuild as short
	MinorBuild as short
	DWMajorVersion as short
	DWMinorVersion as short
	DWSubVersion as short
	htmlEngine as zstring * 257
end type

type DWEnv as _dwenv

type _dwexpose
	x as long
	y as long
	width_ as long
	height as long
end type

type DWExpose as _dwexpose

type _dwdialog
	eve as HEV
	done as long
	method as long
	data_ as any ptr
	result as any ptr
end type

type DWDialog as _dwdialog
type HPRINT as any ptr
#define DW_SIGNAL_FUNC(a) cptr(any ptr, a)
#define DW_DESKTOP HWND_DESKTOP
const DW_MINIMIZED = 1
const DW_BUTTON1_MASK = 1
const DW_BUTTON2_MASK = 1 shl 1
const DW_BUTTON3_MASK = 1 shl 2
const DW_EXEC_CON = 0
const DW_EXEC_GUI = 1
const DW_FILE_OPEN = 0
const DW_FILE_SAVE = 1
const DW_DIRECTORY_OPEN = 2
const DW_HORZ = 0
const DW_VERT = 1
const DW_TIMEOUT_INFINITE = cast(culong, -1)
const BOXHORZ = DW_HORZ
const BOXVERT = DW_VERT
const DW_FCF_SHELLPOSITION = 0
const DW_FCF_NOBYTEALIGN = 0
const DW_FCF_VERTSCROLL = 0
const DW_FCF_HORZSCROLL = 0
const DW_SCROLL_UP = 0
const DW_SCROLL_DOWN = 1
const DW_SCROLL_TOP = 2
const DW_SCROLL_BOTTOM = 3
const DW_MB_RETURN_OK = 0
const DW_MB_RETURN_YES = 1
const DW_MB_RETURN_NO = 0
const DW_MB_RETURN_CANCEL = 2
#define DW_PIXMAP_WIDTH(x) iif(x, x->width_, 0)
#define DW_PIXMAP_HEIGHT(x) iif(x, x->height, 0)
const DW_RGB_COLOR = &hF0000000
const DW_RGB_TRANSPARENT = &h0F000000
const DW_RGB_MASK = &h00FFFFFF
const DW_RED_MASK = &h000000FF
const DW_GREEN_MASK = &h0000FF00
const DW_BLUE_MASK = &h00FF0000
#define DW_RED_VALUE(a) (a and DW_RED_MASK)
#define DW_GREEN_VALUE(a) ((a and DW_GREEN_MASK) shr 8)
#define DW_BLUE_VALUE(a) ((a and DW_BLUE_MASK) shr 16)
#define DW_RGB(a, b, c) (((&hF0000000 or (a)) or ((b) shl 8)) or ((c) shl 16))
#define DW_MENU_SEPARATOR ""
const DW_NOMENU = 0
const DW_MENU_AUTO = 0
const DW_MENU_POPUP_ = cast(culong, -1)
const DW_NOHWND = 0
const DW_NOHTIMER = 0
const DW_NOHPRINT = 0
const DW_NOHPIXMAP = 0
const DW_NOHICN = 0
const DW_PERCENT_INDETERMINATE = culng(-1)
const DW_ERROR_NONE = 0
const DW_ERROR_GENERAL = 1
const DW_ERROR_TIMEOUT = 2
const DW_ERROR_NON_INIT = 3
const DW_ERROR_NO_MEM = 4
const DW_ERROR_INTERRUPT = 5
const DW_ERROR_UNKNOWN = -1
const DW_HTML_GOBACK = 0
const DW_HTML_GOFORWARD = 1
const DW_HTML_GOHOME = 2
const DW_HTML_SEARCH = 3
const DW_HTML_RELOAD = 4
const DW_HTML_STOP = 5
const DW_HTML_PRINT = 6
const DW_HTML_CHANGE_STARTED = 1
const DW_HTML_CHANGE_REDIRECT = 2
const DW_HTML_CHANGE_LOADING = 3
const DW_HTML_CHANGE_COMPLETE = 4
const DW_DRAW_DEFAULT = 0
const DW_DRAW_FILL = 1
const DW_DRAW_FULL = 1 shl 1
const DW_DRAW_NOAA = 1 shl 2
const DW_MLE_COMPLETE_TEXT = 1
const DW_MLE_COMPLETE_DASH = 1 shl 1
const DW_MLE_COMPLETE_QUOTE = 1 shl 2
const DW_FEATURE_UNSUPPORTED = -1
const DW_FEATURE_DISABLED = 0
const DW_FEATURE_ENABLED = 1

type DWFEATURE as long
enum
	DW_FEATURE_HTML = 0
	DW_FEATURE_HTML_RESULT
	DW_FEATURE_WINDOW_BORDER
	DW_FEATURE_WINDOW_TRANSPARENCY
	DW_FEATURE_DARK_MODE
	DW_FEATURE_MLE_AUTO_COMPLETE
	DW_FEATURE_MLE_WORD_WRAP
	DW_FEATURE_CONTAINER_STRIPE
	DW_FEATURE_MDI
	DW_FEATURE_NOTEBOOK_STATUS_TEXT
	DW_FEATURE_NOTIFICATION
	DW_FEATURE_UTF8_UNICODE
	DW_FEATURE_MLE_RICH_EDIT
	DW_FEATURE_TASK_BAR
	DW_FEATURE_TREE
	DW_FEATURE_WINDOW_PLACEMENT
	DW_FEATURE_MAX
end enum

#define DW_RESOURCE(a) iif(a < 65536, cast(HICN, a), cast(HICN, 0))
const _DW_SCROLLED_MIN_WIDTH = 100
const _DW_SCROLLED_MIN_HEIGHT = 75
const _DW_SCROLLED_MAX_WIDTH = 500
const _DW_SCROLLED_MAX_HEIGHT = 400
#define DW_APP_DOMAIN_DEFAULT "org.dbsoft.dwindows"
#define dw_pointer_get_pos(a, b) dw_pointer_query_pos(a, b)
#define dw_environment_get(a) dw_environment_query(a)
#define dw_container_get_start(a, b) dw_container_query_start(a, b)
#define dw_container_get_next(a, b) dw_container_query_next(a, b)

declare sub dw_box_pack_start(byval box as HWND, byval item as HWND, byval width_ as long, byval height as long, byval hsize as long, byval vsize as long, byval pad as long)
declare sub dw_box_pack_end(byval box as HWND, byval item as HWND, byval width_ as long, byval height as long, byval hsize as long, byval vsize as long, byval pad as long)
declare sub dw_box_pack_at_index(byval box as HWND, byval item as HWND, byval index as long, byval width_ as long, byval height as long, byval hsize as long, byval vsize as long, byval pad as long)
declare function dw_box_unpack_at_index(byval box as HWND, byval index as long) as HWND
declare function dw_box_unpack(byval handle as HWND) as long
declare function dw_init(byval newthread as long, byval argc as long, byval argv as zstring ptr ptr) as long
declare sub dw_main()
declare sub dw_main_quit()
declare sub dw_main_sleep(byval seconds as long)
declare sub dw_main_iteration()
declare sub dw_free(byval ptr_ as any ptr)
declare function dw_window_show(byval handle as HWND) as long
declare function dw_window_hide(byval handle as HWND) as long
declare function dw_window_minimize(byval handle as HWND) as long
declare function dw_window_raise(byval handle as HWND) as long
declare function dw_window_lower(byval handle as HWND) as long
declare function dw_window_destroy(byval handle as HWND) as long
declare sub dw_window_redraw(byval handle as HWND)
declare function dw_window_set_font(byval handle as HWND, byval fontname as const zstring ptr) as long
declare function dw_window_get_font(byval handle as HWND) as zstring ptr
declare function dw_window_set_color(byval handle as HWND, byval fore as culong, byval back as culong) as long
declare function dw_window_new(byval hwndOwner as HWND, byval title as const zstring ptr, byval flStyle as culong) as HWND
declare function dw_box_new(byval type_ as long, byval pad as long) as HWND
declare function dw_scrollbox_new(byval type_ as long, byval pad as long) as HWND
declare function dw_scrollbox_get_pos(byval handle as HWND, byval orient as long) as long
declare function dw_scrollbox_get_range(byval handle as HWND, byval orient as long) as long
declare function dw_groupbox_new(byval type_ as long, byval pad as long, byval title as const zstring ptr) as HWND
declare function dw_mdi_new(byval id as culong) as HWND
declare function dw_bitmap_new(byval id as culong) as HWND
declare function dw_bitmapbutton_new(byval text as const zstring ptr, byval id as culong) as HWND
declare function dw_bitmapbutton_new_from_file(byval text as const zstring ptr, byval id as culong, byval filename as const zstring ptr) as HWND
declare function dw_bitmapbutton_new_from_data(byval text as const zstring ptr, byval id as culong, byval str_ as const zstring ptr, byval len_ as long) as HWND
declare function dw_container_new(byval id as culong, byval multi as long) as HWND
declare function dw_tree_new(byval id as culong) as HWND
declare function dw_text_new(byval text as const zstring ptr, byval id as culong) as HWND
declare function dw_status_text_new(byval text as const zstring ptr, byval id as culong) as HWND
declare function dw_mle_new(byval id as culong) as HWND
declare function dw_entryfield_new(byval text as const zstring ptr, byval id as culong) as HWND
declare function dw_entryfield_password_new(byval text as const zstring ptr, byval id as ULONG) as HWND
declare function dw_combobox_new(byval text as const zstring ptr, byval id as culong) as HWND
declare function dw_button_new(byval text as const zstring ptr, byval id as culong) as HWND
declare function dw_spinbutton_new(byval text as const zstring ptr, byval id as culong) as HWND
declare function dw_radiobutton_new(byval text as const zstring ptr, byval id as ULONG) as HWND
declare function dw_percent_new(byval id as culong) as HWND
declare function dw_slider_new(byval vertical as long, byval increments as long, byval id as ULONG) as HWND
declare function dw_scrollbar_new(byval vertical as long, byval id as ULONG) as HWND
declare function dw_checkbox_new(byval text as const zstring ptr, byval id as culong) as HWND
declare function dw_listbox_new(byval id as culong, byval multi as long) as HWND
declare sub dw_listbox_append(byval handle as HWND, byval text as const zstring ptr)
declare sub dw_listbox_insert(byval handle as HWND, byval text as const zstring ptr, byval pos as long)
declare sub dw_listbox_list_append(byval handle as HWND, byval text as zstring ptr ptr, byval count as long)
declare sub dw_listbox_clear(byval handle as HWND)
declare function dw_listbox_count(byval handle as HWND) as long
declare sub dw_listbox_set_top(byval handle as HWND, byval top as long)
declare sub dw_listbox_select(byval handle as HWND, byval index as long, byval state as long)
declare sub dw_listbox_delete(byval handle as HWND, byval index as long)
declare sub dw_listbox_get_text(byval handle as HWND, byval index as ulong, byval buffer as zstring ptr, byval length as ulong)
declare sub dw_listbox_set_text(byval handle as HWND, byval index as ulong, byval buffer as const zstring ptr)
declare function dw_listbox_selected(byval handle as HWND) as long
declare function dw_listbox_selected_multi(byval handle as HWND, byval where as long) as long
declare sub dw_percent_set_pos(byval handle as HWND, byval position as ulong)
declare function dw_slider_get_pos(byval handle as HWND) as ulong
declare sub dw_slider_set_pos(byval handle as HWND, byval position as ulong)
declare function dw_scrollbar_get_pos(byval handle as HWND) as ulong
declare sub dw_scrollbar_set_pos(byval handle as HWND, byval position as ulong)
declare sub dw_scrollbar_set_range(byval handle as HWND, byval range as ulong, byval visible as ulong)
declare sub dw_window_set_pos(byval handle as HWND, byval x as clong, byval y as clong)
declare sub dw_window_set_size(byval handle as HWND, byval width_ as culong, byval height as culong)
declare sub dw_window_set_pos_size(byval handle as HWND, byval x as clong, byval y as clong, byval width_ as culong, byval height as culong)
declare sub dw_window_get_pos_size(byval handle as HWND, byval x as clong ptr, byval y as clong ptr, byval width_ as culong ptr, byval height as culong ptr)
declare sub dw_window_get_preferred_size(byval handle as HWND, byval width_ as long ptr, byval height as long ptr)
declare sub dw_window_set_gravity(byval handle as HWND, byval horz as long, byval vert as long)
declare sub dw_window_set_style(byval handle as HWND, byval style as culong, byval mask as culong)
declare sub dw_window_set_icon(byval handle as HWND, byval icon as HICN)
declare sub dw_window_set_bitmap(byval handle as HWND, byval id as culong, byval filename as const zstring ptr)
declare sub dw_window_set_bitmap_from_data(byval handle as HWND, byval id as culong, byval data_ as const zstring ptr, byval len_ as long)
declare function dw_window_get_text(byval handle as HWND) as zstring ptr
declare sub dw_window_set_text(byval handle as HWND, byval text as const zstring ptr)
declare sub dw_window_set_tooltip(byval handle as HWND, byval bubbletext as const zstring ptr)
declare function dw_window_set_border(byval handle as HWND, byval border as long) as long
declare sub dw_window_disable(byval handle as HWND)
declare sub dw_window_enable(byval handle as HWND)
declare sub dw_window_capture(byval handle as HWND)
declare sub dw_window_release()
declare sub dw_window_reparent(byval handle as HWND, byval newparent as HWND)
declare sub dw_window_set_pointer(byval handle as HWND, byval pointertype as long)
declare sub dw_window_set_focus(byval handle as HWND)
declare sub dw_window_default(byval window_ as HWND, byval defaultitem as HWND)
declare sub dw_window_click_default(byval window_ as HWND, byval next_ as HWND)
declare function dw_mle_import(byval handle as HWND, byval buffer as const zstring ptr, byval startpoint as long) as ulong
declare sub dw_mle_export(byval handle as HWND, byval buffer as zstring ptr, byval startpoint as long, byval length as long)
declare sub dw_mle_get_size(byval handle as HWND, byval bytes as culong ptr, byval lines as culong ptr)
declare sub dw_mle_delete(byval handle as HWND, byval startpoint as long, byval length as long)
declare sub dw_mle_clear(byval handle as HWND)
declare sub dw_mle_freeze(byval handle as HWND)
declare sub dw_mle_thaw(byval handle as HWND)
declare sub dw_mle_set_cursor(byval handle as HWND, byval point_ as long)
declare sub dw_mle_set_visible(byval handle as HWND, byval line_ as long)
declare sub dw_mle_set_editable(byval handle as HWND, byval state as long)
declare sub dw_mle_set_word_wrap(byval handle as HWND, byval state as long)
declare sub dw_mle_set_auto_complete(byval handle as HWND, byval state as long)
declare function dw_mle_search(byval handle as HWND, byval text as const zstring ptr, byval point_ as long, byval flags as culong) as long
declare sub dw_spinbutton_set_pos(byval handle as HWND, byval position as clong)
declare sub dw_spinbutton_set_limits(byval handle as HWND, byval upper as clong, byval lower as clong)
declare sub dw_entryfield_set_limit(byval handle as HWND, byval limit as ULONG)
declare function dw_spinbutton_get_pos(byval handle as HWND) as clong
declare function dw_checkbox_get(byval handle as HWND) as long
declare sub dw_checkbox_set(byval handle as HWND, byval value as long)
declare function dw_tree_insert(byval handle as HWND, byval title as const zstring ptr, byval icon as HICN, byval parent as HTREEITEM, byval itemdata as any ptr) as HTREEITEM
declare function dw_tree_insert_after(byval handle as HWND, byval item as HTREEITEM, byval title as const zstring ptr, byval icon as HICN, byval parent as HTREEITEM, byval itemdata as any ptr) as HTREEITEM
declare sub dw_tree_clear(byval handle as HWND)
declare sub dw_tree_item_delete(byval handle as HWND, byval item as HTREEITEM)
declare sub dw_tree_item_change(byval handle as HWND, byval item as HTREEITEM, byval title as const zstring ptr, byval icon as HICN)
declare sub dw_tree_item_expand(byval handle as HWND, byval item as HTREEITEM)
declare sub dw_tree_item_collapse(byval handle as HWND, byval item as HTREEITEM)
declare sub dw_tree_item_select(byval handle as HWND, byval item as HTREEITEM)
declare sub dw_tree_item_set_data(byval handle as HWND, byval item as HTREEITEM, byval itemdata as any ptr)
declare function dw_tree_item_get_data(byval handle as HWND, byval item as HTREEITEM) as any ptr
declare function dw_tree_get_title(byval handle as HWND, byval item as HTREEITEM) as zstring ptr
declare function dw_tree_get_parent(byval handle as HWND, byval item as HTREEITEM) as HTREEITEM
declare function dw_container_setup(byval handle as HWND, byval flags as culong ptr, byval titles as zstring ptr ptr, byval count as long, byval separator as long) as long
declare function dw_icon_load(byval module as culong, byval id as culong) as HICN
declare function dw_icon_load_from_file(byval filename as const zstring ptr) as HICN
declare function dw_icon_load_from_data(byval data_ as const zstring ptr, byval len_ as long) as HICN
declare sub dw_icon_free(byval handle as HICN)
declare function dw_container_alloc(byval handle as HWND, byval rowcount as long) as any ptr
declare sub dw_container_set_item(byval handle as HWND, byval pointer_ as any ptr, byval column as long, byval row as long, byval data_ as any ptr)
declare sub dw_container_change_item(byval handle as HWND, byval column as long, byval row as long, byval data_ as any ptr)
declare sub dw_container_set_column_width(byval handle as HWND, byval column as long, byval width_ as long)
declare sub dw_container_set_row_title(byval pointer_ as any ptr, byval row as long, byval title as const zstring ptr)
declare sub dw_container_change_row_title(byval handle as HWND, byval row as long, byval title as const zstring ptr)
declare sub dw_container_set_row_data(byval pointer_ as any ptr, byval row as long, byval data_ as any ptr)
declare sub dw_container_change_row_data(byval handle as HWND, byval row as long, byval data_ as any ptr)
declare sub dw_container_insert(byval handle as HWND, byval pointer_ as any ptr, byval rowcount as long)
declare sub dw_container_clear(byval handle as HWND, byval redraw as long)
declare sub dw_container_delete(byval handle as HWND, byval rowcount as long)
declare function dw_container_query_start(byval handle as HWND, byval flags as culong) as zstring ptr
declare function dw_container_query_next(byval handle as HWND, byval flags as culong) as zstring ptr
declare sub dw_container_scroll(byval handle as HWND, byval direction as long, byval rows as clong)
declare sub dw_container_cursor(byval handle as HWND, byval text as const zstring ptr)
declare sub dw_container_cursor_by_data(byval handle as HWND, byval data_ as any ptr)
declare sub dw_container_delete_row(byval handle as HWND, byval text as const zstring ptr)
declare sub dw_container_delete_row_by_data(byval handle as HWND, byval data_ as any ptr)
declare sub dw_container_optimize(byval handle as HWND)
declare sub dw_container_set_stripe(byval handle as HWND, byval oddcolor as culong, byval evencolor as culong)
declare sub dw_filesystem_set_column_title(byval handle as HWND, byval title as const zstring ptr)
declare function dw_filesystem_setup(byval handle as HWND, byval flags as culong ptr, byval titles as zstring ptr ptr, byval count as long) as long
declare sub dw_filesystem_set_item(byval handle as HWND, byval pointer_ as any ptr, byval column as long, byval row as long, byval data_ as any ptr)
declare sub dw_filesystem_set_file(byval handle as HWND, byval pointer_ as any ptr, byval row as long, byval filename as const zstring ptr, byval icon as HICN)
declare sub dw_filesystem_change_item(byval handle as HWND, byval column as long, byval row as long, byval data_ as any ptr)
declare sub dw_filesystem_change_file(byval handle as HWND, byval row as long, byval filename as const zstring ptr, byval icon as HICN)
declare function dw_container_get_column_type(byval handle as HWND, byval column as long) as long
declare function dw_filesystem_get_column_type(byval handle as HWND, byval column as long) as long
declare sub dw_taskbar_insert(byval handle as HWND, byval icon as HICN, byval bubbletext as const zstring ptr)
declare sub dw_taskbar_delete(byval handle as HWND, byval icon as HICN)
declare function dw_screen_width() as long
declare function dw_screen_height() as long
declare function dw_color_depth_get() as culong
declare function dw_notebook_new(byval id as culong, byval top as long) as HWND
declare function dw_notebook_page_new(byval handle as HWND, byval flags as culong, byval front as long) as culong
declare sub dw_notebook_page_destroy(byval handle as HWND, byval pageid as ulong)
declare sub dw_notebook_page_set_text(byval handle as HWND, byval pageid as culong, byval text as const zstring ptr)
declare sub dw_notebook_page_set_status_text(byval handle as HWND, byval pageid as culong, byval text as const zstring ptr)
declare sub dw_notebook_page_set(byval handle as HWND, byval pageid as ulong)
declare function dw_notebook_page_get(byval handle as HWND) as culong
declare sub dw_notebook_pack(byval handle as HWND, byval pageid as culong, byval page as HWND)
declare function dw_splitbar_new(byval type_ as long, byval topleft as HWND, byval bottomright as HWND, byval id as culong) as HWND
declare sub dw_splitbar_set(byval handle as HWND, byval percent as single)
declare function dw_splitbar_get(byval handle as HWND) as single
declare function dw_menu_new(byval id as culong) as HMENUI
declare function dw_menubar_new(byval location as HWND) as HMENUI
declare function dw_menu_append_item(byval menu as HMENUI, byval title as const zstring ptr, byval id as culong, byval flags as culong, byval end_ as long, byval check as long, byval submenu as HMENUI) as HWND
declare function dw_menu_delete_item(byval menu as HMENUI, byval id as culong) as long
declare sub dw_menu_item_set_check(byval menu as HMENUI, byval id as culong, byval check as long)
declare sub dw_menu_item_set_state(byval menux as HMENUI, byval id as culong, byval state as culong)
declare sub dw_menu_popup(byval menu as HMENUI ptr, byval parent as HWND, byval x as long, byval y as long)
declare sub dw_menu_destroy(byval menu as HMENUI ptr)
declare sub dw_pointer_query_pos(byval x as clong ptr, byval y as clong ptr)
declare sub dw_pointer_set_pos(byval x as clong, byval y as clong)
declare sub dw_window_function(byval handle as HWND, byval function_ as any ptr, byval data_ as any ptr)
declare function dw_window_from_id(byval handle as HWND, byval id as long) as HWND
declare function dw_mutex_new() as HMTX
declare sub dw_mutex_close(byval mutex as HMTX)
declare sub dw_mutex_lock(byval mutex as HMTX)
declare function dw_mutex_trylock(byval mutex as HMTX) as long
declare sub dw_mutex_unlock(byval mutex as HMTX)
declare function dw_event_new() as HEV
declare function dw_event_reset(byval eve as HEV) as long
declare function dw_event_post(byval eve as HEV) as long
declare function dw_event_wait(byval eve as HEV, byval timeout as culong) as long
declare function dw_event_close(byval eve as HEV ptr) as long
declare function dw_thread_new(byval func as any ptr, byval data_ as any ptr, byval stack as long) as DWTID
declare sub dw_thread_end()
declare function dw_thread_id() as DWTID
declare sub dw_exit(byval exitcode as long)
declare sub dw_shutdown()
declare function dw_render_new(byval id as culong) as HWND
declare sub dw_render_redraw(byval handle as HWND)
declare sub dw_color_foreground_set(byval value as culong)
declare sub dw_color_background_set(byval value as culong)
declare function dw_color_choose(byval value as culong) as culong
declare function dw_font_choose(byval currfont as const zstring ptr) as zstring ptr
declare sub dw_draw_point(byval handle as HWND, byval pixmap as HPIXMAP, byval x as long, byval y as long)
declare sub dw_draw_line(byval handle as HWND, byval pixmap as HPIXMAP, byval x1 as long, byval y1 as long, byval x2 as long, byval y2 as long)
declare sub dw_draw_rect(byval handle as HWND, byval pixmap as HPIXMAP, byval fill as long, byval x as long, byval y as long, byval width_ as long, byval height as long)
declare sub dw_draw_polygon(byval handle as HWND, byval pixmap as HPIXMAP, byval fill as long, byval npoints as long, byval x as long ptr, byval y as long ptr)
declare sub dw_draw_arc(byval handle as HWND, byval pixmap as HPIXMAP, byval flags as long, byval xorigin as long, byval yorigin as long, byval x1 as long, byval y1 as long, byval x2 as long, byval y2 as long)
declare sub dw_draw_text(byval handle as HWND, byval pixmap as HPIXMAP, byval x as long, byval y as long, byval text as const zstring ptr)
declare sub dw_font_text_extents_get(byval handle as HWND, byval pixmap as HPIXMAP, byval text as const zstring ptr, byval width_ as long ptr, byval height as long ptr)
declare sub dw_font_set_default(byval fontname as const zstring ptr)
declare sub dw_flush()
declare sub dw_pixmap_bitblt(byval dest as HWND, byval destp as HPIXMAP, byval xdest as long, byval ydest as long, byval width_ as long, byval height as long, byval src as HWND, byval srcp as HPIXMAP, byval xsrc as long, byval ysrc as long)
declare function dw_pixmap_stretch_bitblt(byval dest as HWND, byval destp as HPIXMAP, byval xdest as long, byval ydest as long, byval width_ as long, byval height as long, byval src as HWND, byval srcp as HPIXMAP, byval xsrc as long, byval ysrc as long, byval srcwidth as long, byval srcheight as long) as long
declare function dw_pixmap_new(byval handle as HWND, byval width_ as culong, byval height as culong, byval depth as long) as HPIXMAP
declare function dw_pixmap_new_from_file(byval handle as HWND, byval filename as const zstring ptr) as HPIXMAP
declare function dw_pixmap_new_from_data(byval handle as HWND, byval data_ as const zstring ptr, byval len_ as long) as HPIXMAP
declare function dw_pixmap_grab(byval handle as HWND, byval id as ULONG) as HPIXMAP
declare sub dw_pixmap_set_transparent_color(byval pixmap as HPIXMAP, byval color_ as ULONG)
declare function dw_pixmap_set_font(byval pixmap as HPIXMAP, byval fontname as const zstring ptr) as long
declare sub dw_pixmap_destroy(byval pixmap as HPIXMAP)
declare sub dw_beep(byval freq as long, byval dur as long)
declare sub dw_debug(byval format_ as const zstring ptr, ...)
declare function dw_messagebox(byval title as const zstring ptr, byval flags as long, byval format_ as const zstring ptr, ...) as long
declare sub dw_environment_query(byval env as DWEnv ptr)
declare function dw_exec(byval program as const zstring ptr, byval type_ as long, byval params as zstring ptr ptr) as long
declare function dw_browse(byval url as const zstring ptr) as long
declare function dw_file_browse(byval title as const zstring ptr, byval defpath as const zstring ptr, byval ext as const zstring ptr, byval flags as long) as zstring ptr
declare function dw_user_dir() as zstring ptr
declare function dw_app_dir() as zstring ptr
declare function dw_app_id_set(byval appid as const zstring ptr, byval appname as const zstring ptr) as long
declare function dw_dialog_new(byval data_ as any ptr) as DWDialog ptr
declare function dw_dialog_dismiss(byval dialog as DWDialog ptr, byval result as any ptr) as long
declare function dw_dialog_wait(byval dialog as DWDialog ptr) as any ptr
declare sub dw_window_set_data(byval window_ as HWND, byval dataname as const zstring ptr, byval data_ as any ptr)
declare function dw_window_get_data(byval window_ as HWND, byval dataname as const zstring ptr) as any ptr
declare function dw_window_compare(byval window1 as HWND, byval window2 as HWND) as long
declare function dw_module_load(byval name_ as const zstring ptr, byval handle as HMOD ptr) as long
declare function dw_module_symbol(byval handle as HMOD, byval name_ as const zstring ptr, byval func as any ptr ptr) as long
declare function dw_module_close(byval handle as HMOD) as long
declare function dw_timer_connect(byval interval as long, byval sigfunc as any ptr, byval data_ as any ptr) as HTIMER
declare sub dw_timer_disconnect(byval timerid as HTIMER)
declare sub dw_signal_connect(byval window_ as HWND, byval signame as const zstring ptr, byval sigfunc as any ptr, byval data_ as any ptr)
declare sub dw_signal_connect_data(byval window_ as HWND, byval signame as const zstring ptr, byval sigfunc as any ptr, byval discfunc as any ptr, byval data_ as any ptr)
declare sub dw_signal_disconnect_by_window(byval window_ as HWND)
declare sub dw_signal_disconnect_by_data(byval window_ as HWND, byval data_ as any ptr)
declare sub dw_signal_disconnect_by_name(byval window_ as HWND, byval signame as const zstring ptr)
declare function dw_named_event_new(byval name_ as const zstring ptr) as HEV
declare function dw_named_event_get(byval name_ as const zstring ptr) as HEV
declare function dw_named_event_reset(byval eve as HEV) as long
declare function dw_named_event_post(byval eve as HEV) as long
declare function dw_named_event_wait(byval eve as HEV, byval timeout as culong) as long
declare function dw_named_event_close(byval eve as HEV) as long
declare function dw_named_memory_new(byval dest as any ptr ptr, byval size as long, byval name_ as const zstring ptr) as HSHM
declare function dw_named_memory_get(byval dest as any ptr ptr, byval size as long, byval name_ as const zstring ptr) as HSHM
declare function dw_named_memory_free(byval handle as HSHM, byval ptr_ as any ptr) as long
declare sub dw_html_action(byval hwnd as HWND, byval action as long)
declare function dw_html_raw(byval hwnd as HWND, byval string as const zstring ptr) as long
declare function dw_html_url(byval hwnd as HWND, byval url as const zstring ptr) as long
declare function dw_html_javascript_run(byval hwnd as HWND, byval script as const zstring ptr, byval scriptdata as any ptr) as long
declare function dw_html_new(byval id as culong) as HWND
declare function dw_clipboard_get_text() as zstring ptr
declare sub dw_clipboard_set_text(byval str_ as const zstring ptr, byval len_ as long)
declare function dw_calendar_new(byval id as culong) as HWND
declare sub dw_calendar_set_date(byval window_ as HWND, byval year_ as ulong, byval month_ as ulong, byval day_ as ulong)
declare sub dw_calendar_get_date(byval window_ as HWND, byval year_ as ulong ptr, byval month_ as ulong ptr, byval day_ as ulong ptr)
declare function dw_print_new(byval jobname as const zstring ptr, byval flags as culong, byval pages as ulong, byval drawfunc as any ptr, byval drawdata as any ptr) as HPRINT
declare function dw_print_run(byval print_ as HPRINT, byval flags as culong) as long
declare sub dw_print_cancel(byval print_ as HPRINT)
declare function dw_notification_new(byval title as const zstring ptr, byval imagepath as const zstring ptr, byval description as const zstring ptr, ...) as HWND
declare function dw_notification_send(byval notification as HWND) as long
declare function dw_utf8_to_wchar(byval utf8string as const zstring ptr) as wstring ptr
declare function dw_wchar_to_utf8(byval wstring_ as const wstring ptr) as zstring ptr
declare function dw_feature_get(byval feature as DWFEATURE) as long
declare function dw_feature_set(byval feature as DWFEATURE, byval state as long) as long
declare sub _dw_init_thread()
declare sub _dw_deinit_thread()
declare function _dw_convertargs(byval count as long ptr, byval start as zstring ptr, byval hInstance as HINSTANCE) as zstring ptr ptr

end extern
