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
    GtkWidget *title_bg = gtk_image_new_from_file("res/title.png");

    gtk_window_set_title(GTK_WINDOW(win_main), "G-Maa-Jan");
    gtk_window_set_default_size(GTK_WINDOW(win_main), 1200, 675);
    gtk_window_set_position(GTK_WINDOW(win_main), GTK_WIN_POS_CENTER);

    gtk_container_add(GTK_CONTAINER(win_main), title_bg);

    g_signal_connect(win_main, "destroy", G_CALLBACK(gtk_main_quit), NULL);

    gtk_widget_show_all(win_main);

    gtk_main();
    return 0;
}				/* ----------  end of function main  ---------- */
