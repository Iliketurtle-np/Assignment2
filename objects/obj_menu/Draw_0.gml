draw_set_halign(fa_center); //Horizontal alignment
draw_set_valign(fa_middle);  //Vertical alignment
draw_set_font(Font_Menu);
menu_x=room_width/2; 
menu_y=100;
for (i=0;i<array_length_1d(menu);i++)
{
    draw_set_color(c_black);//Shadow color
    draw_text(menu_x+2,menu_y+2,string_hash_to_newline(menu[i]));//Shadow
    draw_set_color(c_white); //Text color    
    if point_in_rectangle(mouse_x,mouse_y,menu_x-string_width(string_hash_to_newline(menu[i]))/2,menu_y-string_height(string_hash_to_newline(menu[i]))/2,menu_x+string_width(string_hash_to_newline(menu[i]))/2,menu_y+string_height(string_hash_to_newline(menu[i]))/2)
    {
        draw_set_color(c_red); //Text color (Mouse tip)
        if mouse_check_button_pressed(mb_left)    
        {
            switch(i)
            {
                case 0:
                    room_goto(TestRoom); //menu[0]
                break;
                case 1: //Credits 
                break;
                case 2: 
                    game_end(); //menu[4]
                break;
            }
        }
    }
    draw_text(menu_x,menu_y,string_hash_to_newline(menu[i]));//Text
    menu_y+=string_height(string_hash_to_newline(menu[i]))+line_spacing;
}

