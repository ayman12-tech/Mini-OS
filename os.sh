fn()
{
variable="$(zenity --window-icon "/home/syedaayman/Desktop/MyOS/create.png" --width 309 --height 240 --entry --title="Create folder" --	text="Name of the folder")"; 
mkdir $variable;

}
fn1()
{
variable1="$(zenity --window-icon "/home/syedaayman/Desktop/MyOS/cfile.png" --width 309 --height 240 --entry --title="Create files" --	text="Name of the files")";
cat> $variable1.txt;
}
fn2()
{
FILE=$(zenity --title="Search" --text="Enter File Name" --entry) 
echo $FILE

find / -iname $FILE 2>/dev/null | zenity --text-info --width 530 --height 600

}
fn3()
{

browser=$(zenity --list  --text "Which browser?" --radiolist  --column "Pick" --column "Browser" TRUE firefox)

sites=$(zenity --height=280 --width=300 --list  --text "Sites" --checklist  --column "Pick" --column "Sites" TRUE http://www.google.com/ --separator=" ")

for site in $sites; do
  $browser $site
done
}
fn4()
{
gnome-system-monitor
}
fn5()
{
while true; do
abcc="$(zenity --window-icon "/home/syedaayman/Desktop/MyOS/c.png" --width 309 --height 240 --list --radiolist --column "Choose" --column "Option" TRUE "Write a C Programs" FALSE "Execute" FALSE "Delete" FALSE "Back")"
	if [ "$abcc" = "Back" ]; then
          echo done
          exit
	elif [ "$abcc" = "Write a C Programs" ]; then
		gedit linux.c
	elif [ "$abcc" = "Execute" ]; then
		gcc -o linux linux.c
		./linux
	elif [ "$abcc" = "Delete" ]; then
		rm linux.c
	else
          clear
          echo Invalid option
         fi
done
}
fn0()
{
read -p "Enter your filename: " filee
echo "Press 1: To give all rights";
echo "Press 2: To remove all rights";
echo "Press 3: To allow executable permission";
echo "Press 4: To take out write and executable permission";

read -p "Enter the permission you want to give." a

case $a in
	1) ay 
	echo "All rights are given";;
	2) ri
	echo "All rights are removed";;
	3) ma
	echo "Executable permission";;
	4) za
	echo "Write and executable permissions are taken";;
esac

}
ay()
{
	chmod +rwx $filee
}
ri()
{
	chmod -rwx $filee
}
ma()
{
	chmod +x $filee
}
za()
{
	chmod -wx $filee
}
fn11()
{
sh -c 'zenity --info --text "$(uptime)"'
}
fn6()
{

PASSWD="pass123"

PASSWD=$(zenity --width 309 --height 240 --password --title=WELCOME)

echo "echo $PASSWD | sudo -S cp InstallerCreator64bit /usr/bin" > temp

#xterm -e bash temp

case $? in
         0)
         echo "fn7";;
        
         1)
                echo "Stop login.";;
        -1)
                echo "An unexpected error has occurred.";;

esac
}
fn10()
{
while true; do
qwe="$(zenity  --width 309 --height 240 --list --radiolist --column "Choose" --column "Option" TRUE "Process-1 to writee data" FALSE "Process-2 to readd data" FALSE "Back")"
	if [ "$qwe" = "Back" ]; then
          echo done
          exit
	elif [ "$qwe" = "Process-1 to writee data" ]; then
		gcc -o writee writee.c
		./writee
	elif [ "$qwe" = "Process-2 to readd data" ]; then
		gcc -o readd readd.c
		./readd
	else
          clear
          echo Invalid option
         fi
done
}
fn12()
{
zenity --calendar
}

fn7()
{
while true; do
  menu_launch="$(zenity  --width 600 --height 600 --list --radiolist --column "Choose" --column "Option" TRUE "Create Folder" FALSE "Create Files" FALSE "Change Rights" FALSE "Search Files" FALSE "Applications" FALSE "Sort Array" FALSE "Multiple Threads" FALSE "Task Manager" FALSE "Write a Program inn C" FALSE "Allows to share data" FALSE "Show system time" FALSE "Calendar" FALSE "Shutdown")"
         if [ "$menu_launch" = "Shutdown" ]; then
          sh shutdown.sh
	exit
         elif [ "$menu_launch" = "Create Folder" ]; then
		`fn`
	 elif [ "$menu_launch" = "Create Files" ]; then
		`fn1`
	elif [ "$menu_launch" = "Search Files" ]; then
		`fn2`
	 elif [ "$menu_launch" = "Change Rights" ]; then
		`fn0`
	elif [ "$menu_launch" = "Applications" ]; then
		`fn3`
	elif [ "$menu_launch" = "Sort Array" ]; then
		gcc -o process process.c
		./process
	elif [ "$menu_launch" = "Multiple Threads" ]; then
		gcc -o sudoku sudoku.c -lpthread
		./sudoku
	elif [ "$menu_launch" = "Task Manager" ]; then
		`fn4`
	elif [ "$menu_launch" = "Allows to share data" ]; then
		`fn10`
	elif [ "$menu_launch" = "Write a Program inn C" ]; then
		`fn5`
	elif [ "$menu_launch" = "Show system time" ]; then
		`fn11`
	elif [ "$menu_launch" = "Calendar" ]; then
		`fn12`
         else
          clear
          echo Invalid option
         fi
done
}
while true; do
  asd="$(zenity  --width 600 --height 600 --title "Welcome to my OS" --list --radiolist --column "Choose" --column "Option" TRUE "Ubuntu" FALSE "Exit")"
         if [ "$asd" = "Exit" ]; then
          echo done
          exit
         elif [ "$asd" = "Ubuntu" ]; then
		`fn6`
         else
          clear
          echo Invalid option
         fi
done
