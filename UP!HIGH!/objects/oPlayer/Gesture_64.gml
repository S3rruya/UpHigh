switch state
{
	case STATES.stoped: { state = STATES.wall; } break;
	case STATES.wall: { state = STATES.dashing; } break;
	case STATES.falling: { state = STATES.dashing; } break;
	case STATES.dashing: { if(dashCount > 0) { dashCount-=1; state = STATES.outdashing } } break;
} 