#include <ncurses.h>
#include <lua.h>
#include <lualib.h>
#include <lauxlib.h>
 
int getch_wrapper(lua_State *L){
    reset_prog_mode(); /* Get back into curses */
    lua_pushnumber(L, getch()); /* Grab a char and push it */
    endwin(); /* Get out of curses again */
    return 1; /* Return 1 value to Lua */
}

int luaopen_kb(lua_State *L){
initscr(); /* Start curses */
raw(); /* Turn off line buffering */
keypad(stdscr, TRUE); /* Grab ALL kbd input, arrow-keys included */
refresh(); /* Store screen state so endwin works */
endwin(); /* Leave curses mode */
luaL_Reg fns[] = {
    {"getch", getch_wrapper},
    {NULL, NULL}};
luaL_openlib(L, "kb", fns, 0);
    return 0;
}

