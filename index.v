import os
import gui
// import gg

// Program dependent constants
const (
	user_dir = os.home_dir()
)

fn main() { 
	gui.temp(user_dir)
}

fn win_exit() {
	exit(0)
}
