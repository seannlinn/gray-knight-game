// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function State (_sprite) constructor {
	sprite = _sprite;
	
	stateOnEnd = undefined;
	static StateOnEnd = function (_state) {
		stateOnEnd = _state;
	}	
}

function state_set (_state) {
	if (state == _state) return;
	state = _state;
	sprite_index = state.sprite;
	image_index = 0;
}