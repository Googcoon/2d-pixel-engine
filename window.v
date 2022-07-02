module vixel 

import gg
import gx
pub type UpdateFN = fn (mut ctx gg.Context)
pub struct Window {
	context gg.Context

}

pub fn init_window(title string, width int, height int) Window {
	mut context := gg.new_context(
        window_title: title
		width: width
        height: height
	)
	context.run()
	return Window{
		context: context
		}
}
 
pub fn (window Window) set_updatefn (func UpdateFN) {
	window.context.config.frame_fn = func
}