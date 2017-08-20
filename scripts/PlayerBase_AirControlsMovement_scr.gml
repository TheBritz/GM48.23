///Read Controls
//trace("Step " + string(global.StepNumber) + ": PlayerBase_AirControlsMovement_scr");

//Basic Movement
var leftState = InputManager_GetButtonControlState_scr(ButtonControls.Left);
var rightState = InputManager_GetButtonControlState_scr(ButtonControls.Right);
var downState = InputManager_GetButtonControlState_scr(ButtonControls.Down);
var jumpState = InputManager_GetButtonControlState_scr(ButtonControls.Jump);

var accelHor = 0;
if(leftState == ButtonStates.Pressed || leftState == ButtonStates.JustPressed)
{
  accelHor -= m_movementAirFallAccelHor;
}

if(rightState == ButtonStates.Pressed || rightState == ButtonStates.JustPressed)
{
  accelHor += m_movementAirFallAccelHor;
}

if(downState == ButtonStates.JustPressed &&
   Movable_GetVSpeed_scr(id) >= -2)
{
  m_combatantState = CombatantStates.FastFall;
}

if(accelHor != 0)
{
  Movable_ChangeHSpeed_scr(m_movementAirFallMaxSpeedHor * sign(accelHor), m_movementAirFallAccelHor);
}

//Attack
if(InputManager_GetButtonControlState_scr(ButtonControls.Attack) == ButtonStates.JustPressed)
{
  //m_combatantState = CombatantStates.GroundAttack;
  //sprite_index = m_combatantSpriteGroundAttack;
  //m_activelyMoving = false;
  //alarm[1] = 12;
}

