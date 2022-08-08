/// @description Insert description here
// You can write your code in this editor

y -= scroll_speed;
if (y <= -text_height) {
  room_goto(Room_Menu);
}
