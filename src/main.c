/*
 * =====================================================================================
 *
 *       Filename:  main.c
 *
 *    Description:  Entrance of G-MaaJan
 *
 *        Version:  1.0
 *        Created:  09/24/2014 12:47:14 AM
 *       Revision:  none
 *       Compiler:  gcc
 *
 *         Author:  Z.Shang (), shangzhanlin@gmail.com
 *   Organization:  
 *
 * =====================================================================================
 */

#include <gtk/gtk.h>
#include <stdlib.h>
#include <stdio.h>

/* 
 * ===  FUNCTION  ======================================================================
 *         Name:  main
 *  Description:  
 * =====================================================================================
 */
    int
main ( int argc, char *argv[] )
{
    gtk_init(&argc, &argv);
    GtkWidget *win_main = gtk_window_new(GTK_WINDOW_TOPLEVEL);
    gtk_window_set_title(GTK_WINDOW(win_main), "G-Maa-Jan");

    g_signal_connect(win_main, "destroy", G_CALLBACK(gtk_main_quit), NULL);

    gtk_widget_show(win_main);

    gtk_main();
    return 0;
}				/* ----------  end of function main  ---------- */
