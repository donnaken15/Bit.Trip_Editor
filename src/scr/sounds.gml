if enablesounds = 0
{globalvar snd_null,snd_pause,snd_unpause,snd_death,snd_game_over,snd_challenge,
snd_score_tally_1,snd_score_tally_2,snd_score_tally_3,snd_score_tally_4,
snd_score_tally_5,snd_score_tally_6,snd_score_tally_7,snd_score_tally_8,
snd_mode_up,snd_mode_down,snd_mode_multi,snd_powerup,snd_nether;
snd_null = caster_load(path_sfx+"Common\Null.ogg")
snd_pause = caster_load(path_sfx+"Common\Pause.ogg")
snd_unpause = caster_load(path_sfx+"Common\Unpause.ogg")
snd_death = caster_load(path_sfx+"Common\PaddleDeath.ogg")
snd_game_over = caster_load(path_sfx+"Common\GameOver.ogg")
snd_challenge = caster_load(path_sfx+"Common\Challenge.ogg")
snd_ballbuster = caster_load(path_sfx+"Common\BallBuster.ogg")
// try optimizing along with other numbered files
for (i=0;i<8;i+=1)
{
	execute_code('snd_score_tally_'+string(i)+' = caster_load(path_sfx+"Common\ScoreTally'+string(i)+'.ogg")')
}
/*
snd_score_tally_1 = caster_load(path_sfx+"Common\ScoreTally1.ogg")
snd_score_tally_2 = caster_load(path_sfx+"Common\ScoreTally2.ogg")
snd_score_tally_3 = caster_load(path_sfx+"Common\ScoreTally3.ogg")
snd_score_tally_4 = caster_load(path_sfx+"Common\ScoreTally4.ogg")
snd_score_tally_5 = caster_load(path_sfx+"Common\ScoreTally5.ogg")
snd_score_tally_6 = caster_load(path_sfx+"Common\ScoreTally6.ogg")
snd_score_tally_7 = caster_load(path_sfx+"Common\ScoreTally7.ogg")
snd_score_tally_8 = caster_load(path_sfx+"Common\ScoreTally8.ogg")
*/
snd_mode_up = caster_load(path_sfx+"Common\ModeUp.ogg")
snd_mode_down = caster_load(path_sfx+"Common\ModeDown.ogg")
snd_mode_multi  = caster_load(path_sfx+"Common\MultiUp.ogg")
snd_powerup = caster_load(path_sfx+"Common\Powerup.ogg")
snd_nether = caster_load(path_sfx+"Common\N_PaddleImpact1.ogg")
switch room
{
case beat:
globalvar snd_beat_lvl1_h_hit1,snd_beat_lvl1_h_hit2,snd_beat_lvl1_h_hit3,snd_beat_lvl1_h_hit4,snd_beat_lvl1_h_hit5,snd_beat_lvl1_m_hit1,snd_beat_lvl1_m_hit2,snd_beat_lvl1_m_hit3,snd_beat_lvl1_m_hit4,
snd_beat_lvl2_h_hit1,snd_beat_lvl2_h_hit2,snd_beat_lvl2_h_hit3,snd_beat_lvl2_h_hit4,snd_beat_lvl2_m_hit1,snd_beat_lvl2_m_hit2,snd_beat_lvl2_m_hit3,snd_beat_lvl2_m_hit4,
snd_beat_lvl3_h_hit1,snd_beat_lvl3_h_hit2,snd_beat_lvl3_h_hit3,snd_beat_lvl3_h_hit4,snd_beat_lvl3_m_hit1,snd_beat_lvl3_m_hit2,snd_beat_lvl3_m_hit3,snd_beat_lvl3_m_hit4,
snd_beat_lvl1_d_hit1,snd_beat_lvl1_d_hit2,snd_beat_lvl1_d_hit3,snd_beat_lvl1_d_hit4,
snd_beat_lvl2_d_hit1,snd_beat_lvl2_d_hit2,snd_beat_lvl2_d_hit3,snd_beat_lvl2_d_hit4,
snd_beat_lvl3_d_hit1,snd_beat_lvl3_d_hit2,snd_beat_lvl3_d_hit3,snd_beat_lvl3_d_hit4,
snd_beat_lvl2_d2_hit1,snd_beat_lvl2_d2_hit2,snd_beat_lvl2_d2_hit3,snd_beat_lvl2_d2_hit4,snd_beat_miss,
snd_beat_trans_1,snd_beat_trans_2,snd_beat_trans_3,
snd_beat_trans_1_back,snd_beat_trans_2_back,snd_beat_trans_3_back;
snd_beat_miss = caster_load(path_sfx+"Common\BeatMiss.ogg")
// also optimize this along with somehow setting ids or something
// maybe execute_string for id stuff to keep snd_beat_lvl#_X_hit#
snd_beat_lvl1_h_hit1 = caster_load(path_sfx+"Beat\H_PaddleImpact1.ogg")
snd_beat_lvl1_h_hit2 = caster_load(path_sfx+"Beat\H_PaddleImpact2.ogg")
snd_beat_lvl1_h_hit3 = caster_load(path_sfx+"Beat\H_PaddleImpact3.ogg")
snd_beat_lvl1_h_hit4 = caster_load(path_sfx+"Beat\H_PaddleImpact4.ogg")
snd_beat_lvl1_h_hit5 = caster_load(path_sfx+"Beat\H_PaddleImpact5.ogg")
snd_beat_lvl1_m_hit1 = caster_load(path_sfx+"Beat\M_PaddleImpact1.ogg")
snd_beat_lvl1_m_hit2 = caster_load(path_sfx+"Beat\M_PaddleImpact2.ogg")
snd_beat_lvl1_m_hit3 = caster_load(path_sfx+"Beat\M_PaddleImpact3.ogg")
snd_beat_lvl1_m_hit4 = caster_load(path_sfx+"Beat\M_PaddleImpact4.ogg")
snd_beat_lvl2_h_hit1 = caster_load(path_sfx+"Beat\L2H_PaddleImpact1.ogg")
snd_beat_lvl2_h_hit2 = caster_load(path_sfx+"Beat\L2H_PaddleImpact2.ogg")
snd_beat_lvl2_h_hit3 = caster_load(path_sfx+"Beat\L2H_PaddleImpact3.ogg")
snd_beat_lvl2_h_hit4 = caster_load(path_sfx+"Beat\L2H_PaddleImpact4.ogg")
snd_beat_lvl2_m_hit1 = caster_load(path_sfx+"Beat\L2M_PaddleImpact1.ogg")
snd_beat_lvl2_m_hit2 = caster_load(path_sfx+"Beat\L2M_PaddleImpact2.ogg")
snd_beat_lvl2_m_hit3 = caster_load(path_sfx+"Beat\L2M_PaddleImpact3.ogg")
snd_beat_lvl2_m_hit4 = caster_load(path_sfx+"Beat\L2M_PaddleImpact4.ogg")
snd_beat_lvl3_h_hit1 = caster_load(path_sfx+"Beat\L3H_PaddleImpact1.ogg")
snd_beat_lvl3_h_hit2 = caster_load(path_sfx+"Beat\L3H_PaddleImpact2.ogg")
snd_beat_lvl3_h_hit3 = caster_load(path_sfx+"Beat\L3H_PaddleImpact3.ogg")
snd_beat_lvl3_h_hit4 = caster_load(path_sfx+"Beat\L3H_PaddleImpact4.ogg")
snd_beat_lvl3_m_hit1 = caster_load(path_sfx+"Beat\L3M_PaddleImpact1.ogg")
snd_beat_lvl3_m_hit2 = caster_load(path_sfx+"Beat\L3M_PaddleImpact2.ogg")
snd_beat_lvl3_m_hit3 = caster_load(path_sfx+"Beat\L3M_PaddleImpact3.ogg")
snd_beat_lvl3_m_hit4 = caster_load(path_sfx+"Beat\L3M_PaddleImpact4.ogg")
snd_beat_lvl1_d_hit1 = caster_load(path_sfx+"Beat\H_BeatDeath1.ogg")
snd_beat_lvl1_d_hit2 = caster_load(path_sfx+"Beat\H_BeatDeath2.ogg")
snd_beat_lvl1_d_hit3 = caster_load(path_sfx+"Beat\H_BeatDeath3.ogg")
snd_beat_lvl1_d_hit4 = caster_load(path_sfx+"Beat\H_BeatDeath4.ogg")
snd_beat_lvl2_d_hit1 = caster_load(path_sfx+"Beat\L2H_BeatDeath1.ogg")
snd_beat_lvl2_d_hit2 = caster_load(path_sfx+"Beat\L2H_BeatDeath2.ogg")
snd_beat_lvl2_d_hit3 = caster_load(path_sfx+"Beat\L2H_BeatDeath3.ogg")
snd_beat_lvl2_d_hit4 = caster_load(path_sfx+"Beat\L2H_BeatDeath4.ogg")
snd_beat_lvl3_d_hit1 = caster_load(path_sfx+"Beat\L3H_BeatDeath1.ogg")
snd_beat_lvl3_d_hit2 = caster_load(path_sfx+"Beat\L3H_BeatDeath2.ogg")
snd_beat_lvl3_d_hit3 = caster_load(path_sfx+"Beat\L3H_BeatDeath3.ogg")
snd_beat_lvl3_d_hit4 = caster_load(path_sfx+"Beat\L3H_BeatDeath4.ogg")
snd_beat_lvl2_d2_hit1 = caster_load(path_sfx+"Beat\L2M_BeatDeath1.ogg")
snd_beat_lvl2_d2_hit2 = caster_load(path_sfx+"Beat\L2M_BeatDeath2.ogg")
snd_beat_lvl2_d2_hit3 = caster_load(path_sfx+"Beat\L2M_BeatDeath3.ogg")
snd_beat_lvl2_d2_hit4 = caster_load(path_sfx+"Beat\L2M_BeatDeath4.ogg")
snd_beat_trans_1 = caster_load(path_sfx+"Beat\StageTransition.ogg")
snd_beat_trans_2 = caster_load(path_sfx+"Beat\L2StageTransition.ogg")
snd_beat_trans_3 = caster_load(path_sfx+"Beat\L3StageTransition.ogg")
snd_beat_trans_1_back = caster_load(path_sfx+"Beat\StageTransitionBackward.ogg")
snd_beat_trans_2_back = caster_load(path_sfx+"Beat\L2StageTransitionBackward.ogg")
snd_beat_trans_3_back = caster_load(path_sfx+"Beat\L3StageTransitionBackward.ogg")
break
case core:
globalvar snd_core_lvl1_h_hit1,snd_core_lvl1_h_hit2,snd_core_lvl1_h_hit3,snd_core_lvl1_h_hit4,snd_core_lvl1_h_hit5,snd_core_lvl1_h_hit6,snd_core_lvl1_h_hit7,
snd_core_lvl1_m_hit1,snd_core_lvl1_m_hit2,snd_core_lvl1_m_hit3,snd_core_lvl1_m_hit4,snd_core_lvl1_m_hit5,snd_core_lvl1_m_hit6,snd_core_lvl1_m_hit7,
snd_core_lvl2_h_hit1,snd_core_lvl2_h_hit2,snd_core_lvl2_h_hit3,snd_core_lvl2_h_hit4,snd_core_lvl2_h_hit5,snd_core_lvl2_h_hit6,snd_core_lvl2_h_hit7,
snd_core_lvl2_m_hit1,snd_core_lvl2_m_hit2,snd_core_lvl2_m_hit3,snd_core_lvl2_m_hit4,snd_core_lvl2_m_hit5,snd_core_lvl2_m_hit6,snd_core_lvl2_m_hit7,
snd_core_lvl3_h_hit1,snd_core_lvl3_h_hit2,snd_core_lvl3_h_hit3,snd_core_lvl3_h_hit4,snd_core_lvl3_h_hit5,snd_core_lvl3_h_hit6,snd_core_lvl3_h_hit7,
snd_core_lvl3_h_hit8,snd_core_lvl3_m_hit1,snd_core_lvl3_m_hit2,snd_core_lvl3_m_hit3,snd_core_lvl3_m_hit4,snd_core_lvl3_m_hit5,snd_core_lvl3_m_hit6,
snd_core_lvl3_m_hit7,snd_core_lvl3_m_hit8,snd_core_bomb,
snd_core_trans_1,snd_core_trans_2,snd_core_trans_3,
snd_core_trans_1_back,snd_core_trans_2_back,snd_core_trans_3_back
;
snd_core_lvl1_h_hit1 = caster_load(path_sfx+"Core\L1H_BEATBLAST1.ogg")
snd_core_lvl1_h_hit2 = caster_load(path_sfx+"Core\L1H_BEATBLAST2.ogg")
snd_core_lvl1_h_hit3 = caster_load(path_sfx+"Core\L1H_BEATBLAST3.ogg")
snd_core_lvl1_h_hit4 = caster_load(path_sfx+"Core\L1H_BEATBLAST4.ogg")
snd_core_lvl1_h_hit5 = caster_load(path_sfx+"Core\L1H_BEATBLAST5.ogg")
snd_core_lvl1_h_hit6 = caster_load(path_sfx+"Core\L1H_BEATBLAST6.ogg")
snd_core_lvl1_h_hit7 = caster_load(path_sfx+"Core\L1H_BEATBLAST7.ogg")
snd_core_lvl1_m_hit1 = caster_load(path_sfx+"Core\L1M_BEATBLAST1.ogg")
snd_core_lvl1_m_hit2 = caster_load(path_sfx+"Core\L1M_BEATBLAST2.ogg")
snd_core_lvl1_m_hit3 = caster_load(path_sfx+"Core\L1M_BEATBLAST3.ogg")
snd_core_lvl1_m_hit4 = caster_load(path_sfx+"Core\L1M_BEATBLAST4.ogg")
snd_core_lvl1_m_hit5 = caster_load(path_sfx+"Core\L1M_BEATBLAST5.ogg")
snd_core_lvl1_m_hit6 = caster_load(path_sfx+"Core\L1M_BEATBLAST6.ogg")
snd_core_lvl1_m_hit7 = caster_load(path_sfx+"Core\L1M_BEATBLAST7.ogg")
snd_core_lvl2_h_hit1 = caster_load(path_sfx+"Core\L2H_BEATBLAST1.ogg")
snd_core_lvl2_h_hit2 = caster_load(path_sfx+"Core\L2H_BEATBLAST2.ogg")
snd_core_lvl2_h_hit3 = caster_load(path_sfx+"Core\L2H_BEATBLAST3.ogg")
snd_core_lvl2_h_hit4 = caster_load(path_sfx+"Core\L2H_BEATBLAST4.ogg")
snd_core_lvl2_h_hit5 = caster_load(path_sfx+"Core\L2H_BEATBLAST5.ogg")
snd_core_lvl2_h_hit6 = caster_load(path_sfx+"Core\L2H_BEATBLAST6.ogg")
snd_core_lvl2_h_hit7 = caster_load(path_sfx+"Core\L2H_BEATBLAST7.ogg")
snd_core_lvl2_m_hit1 = caster_load(path_sfx+"Core\L2M_BEATBLAST1.ogg")
snd_core_lvl2_m_hit2 = caster_load(path_sfx+"Core\L2M_BEATBLAST2.ogg")
snd_core_lvl2_m_hit3 = caster_load(path_sfx+"Core\L2M_BEATBLAST3.ogg")
snd_core_lvl2_m_hit4 = caster_load(path_sfx+"Core\L2M_BEATBLAST4.ogg")
snd_core_lvl2_m_hit5 = caster_load(path_sfx+"Core\L2M_BEATBLAST5.ogg")
snd_core_lvl2_m_hit6 = caster_load(path_sfx+"Core\L2M_BEATBLAST6.ogg")
snd_core_lvl2_m_hit7 = caster_load(path_sfx+"Core\L2M_BEATBLAST7.ogg")
snd_core_lvl3_h_hit1 = caster_load(path_sfx+"Core\L3H_BEATBLAST1.ogg")
snd_core_lvl3_h_hit2 = caster_load(path_sfx+"Core\L3H_BEATBLAST2.ogg")
snd_core_lvl3_h_hit3 = caster_load(path_sfx+"Core\L3H_BEATBLAST3.ogg")
snd_core_lvl3_h_hit4 = caster_load(path_sfx+"Core\L3H_BEATBLAST4.ogg")
snd_core_lvl3_h_hit5 = caster_load(path_sfx+"Core\L3H_BEATBLAST5.ogg")
snd_core_lvl3_h_hit6 = caster_load(path_sfx+"Core\L3H_BEATBLAST6.ogg")
snd_core_lvl3_h_hit7 = caster_load(path_sfx+"Core\L3H_BEATBLAST7.ogg")
snd_core_lvl3_h_hit8 = caster_load(path_sfx+"Core\L3H_BEATBLAST8.ogg")
snd_core_lvl3_m_hit1 = caster_load(path_sfx+"Core\L3M_BEATBLAST1.ogg")
snd_core_lvl3_m_hit2 = caster_load(path_sfx+"Core\L3M_BEATBLAST2.ogg")
snd_core_lvl3_m_hit3 = caster_load(path_sfx+"Core\L3M_BEATBLAST3.ogg")
snd_core_lvl3_m_hit4 = caster_load(path_sfx+"Core\L3M_BEATBLAST4.ogg")
snd_core_lvl3_m_hit5 = caster_load(path_sfx+"Core\L3M_BEATBLAST5.ogg")
snd_core_lvl3_m_hit6 = caster_load(path_sfx+"Core\L3M_BEATBLAST6.ogg")
snd_core_lvl3_m_hit7 = caster_load(path_sfx+"Core\L3M_BEATBLAST7.ogg")
snd_core_lvl3_m_hit8 = caster_load(path_sfx+"Core\L3M_BEATBLAST8.ogg")
snd_core_bomb = caster_load(path_sfx+"Core\Boom.ogg")
snd_nether_tick = caster_load(path_sfx+"Core\NetherTick1.ogg") // < straightup audacity lol
snd_nether_tick2 = caster_load(path_sfx+"Core\NetherTick2.ogg")
snd_core_trans_1 = caster_load(path_sfx+"Core\StageTransition.ogg")
snd_core_trans_2 = caster_load(path_sfx+"Core\L2StageTransition.ogg")
snd_core_trans_3 = caster_load(path_sfx+"Core\L3StageTransition.ogg")
snd_core_trans_1_back = caster_load(path_sfx+"Core\StageTransitionBackward.ogg")
snd_core_trans_2_back = caster_load(path_sfx+"Core\L2StageTransitionBackward.ogg")
snd_core_trans_3_back = caster_load(path_sfx+"Core\L3StageTransitionBackward.ogg")
break
/*case void:
globalvar snd_void_lvl1_h_1,snd_void_lvl1_h_2,snd_void_lvl1_h_3,snd_void_lvl1_h_4,snd_void_lvl1_h_5,snd_void_lvl1_h_6,
snd_void_lvl1_m_1,snd_void_lvl1_m_2,snd_void_lvl1_m_3,snd_void_lvl1_m_4,snd_void_lvl1_m_5,snd_void_lvl1_m_6,
snd_void_lvl1_u_1,snd_void_lvl1_u_2,snd_void_lvl1_u_3,snd_void_lvl1_u_4,snd_void_lvl1_u_5,snd_void_lvl1_u_6,
snd_void_lvl2_h_1,snd_void_lvl2_h_2,snd_void_lvl2_h_3,snd_void_lvl2_h_4,snd_void_lvl2_h_5,snd_void_lvl2_h_6,
snd_void_lvl2_m_1,snd_void_lvl2_m_2,snd_void_lvl2_m_3,snd_void_lvl2_m_4,snd_void_lvl2_m_5,snd_void_lvl2_m_6,
snd_void_lvl2_u_1,snd_void_lvl2_u_2,snd_void_lvl2_u_3,snd_void_lvl2_u_4,snd_void_lvl2_u_5,snd_void_lvl2_u_6,
snd_void_lvl3_h_1,snd_void_lvl3_h_2,snd_void_lvl3_h_3,snd_void_lvl3_h_4,snd_void_lvl3_h_5,snd_void_lvl3_h_6,
snd_void_lvl3_m_1,snd_void_lvl3_m_2,snd_void_lvl3_m_3,snd_void_lvl3_m_4,snd_void_lvl3_m_5,snd_void_lvl3_m_6,
snd_void_lvl3_u_1,snd_void_lvl3_u_2,snd_void_lvl3_u_3,snd_void_lvl3_u_4,snd_void_lvl3_u_5,snd_void_lvl3_u_6,
snd_void_pop,snd_void_miss,snd_void_n_b,snd_void_n_g,snd_void_n_pop;
snd_void_lvl1_h_1 = caster_load(path_sfx+"Void\CollectTone_lvl1_hyper_01.ogg")
snd_void_lvl1_h_2 = caster_load(path_sfx+"Void\CollectTone_lvl1_hyper_02.ogg")
snd_void_lvl1_h_3 = caster_load(path_sfx+"Void\CollectTone_lvl1_hyper_03.ogg")
snd_void_lvl1_h_4 = caster_load(path_sfx+"Void\CollectTone_lvl1_hyper_04.ogg")
snd_void_lvl1_h_5 = caster_load(path_sfx+"Void\CollectTone_lvl1_hyper_05.ogg")
snd_void_lvl1_h_6 = caster_load(path_sfx+"Void\CollectTone_lvl1_hyper_06.ogg")
snd_void_lvl1_m_1 = caster_load(path_sfx+"Void\CollectTone_lvl1_mega_01.ogg")
snd_void_lvl1_m_2 = caster_load(path_sfx+"Void\CollectTone_lvl1_mega_02.ogg")
snd_void_lvl1_m_3 = caster_load(path_sfx+"Void\CollectTone_lvl1_mega_03.ogg")
snd_void_lvl1_m_4 = caster_load(path_sfx+"Void\CollectTone_lvl1_mega_04.ogg")
snd_void_lvl1_m_5 = caster_load(path_sfx+"Void\CollectTone_lvl1_mega_05.ogg")
snd_void_lvl1_m_6 = caster_load(path_sfx+"Void\CollectTone_lvl1_mega_06.ogg")
snd_void_lvl1_u_1 = caster_load(path_sfx+"Void\CollectTone_lvl1_ultra_01.ogg")
snd_void_lvl1_u_2 = caster_load(path_sfx+"Void\CollectTone_lvl1_ultra_02.ogg")
snd_void_lvl1_u_3 = caster_load(path_sfx+"Void\CollectTone_lvl1_ultra_03.ogg")
snd_void_lvl1_u_4 = caster_load(path_sfx+"Void\CollectTone_lvl1_ultra_04.ogg")
snd_void_lvl1_u_5 = caster_load(path_sfx+"Void\CollectTone_lvl1_ultra_05.ogg")
snd_void_lvl1_u_6 = caster_load(path_sfx+"Void\CollectTone_lvl1_ultra_06.ogg")
snd_void_lvl2_h_1 = caster_load(path_sfx+"Void\CollectTone_lvl2_hyper_01.ogg")
snd_void_lvl2_h_2 = caster_load(path_sfx+"Void\CollectTone_lvl2_hyper_02.ogg")
snd_void_lvl2_h_3 = caster_load(path_sfx+"Void\CollectTone_lvl2_hyper_03.ogg")
snd_void_lvl2_h_4 = caster_load(path_sfx+"Void\CollectTone_lvl2_hyper_04.ogg")
snd_void_lvl2_h_5 = caster_load(path_sfx+"Void\CollectTone_lvl2_hyper_05.ogg")
snd_void_lvl2_h_6 = caster_load(path_sfx+"Void\CollectTone_lvl2_hyper_06.ogg")
snd_void_lvl2_m_1 = caster_load(path_sfx+"Void\CollectTone_lvl2_mega_01.ogg")
snd_void_lvl2_m_2 = caster_load(path_sfx+"Void\CollectTone_lvl2_mega_02.ogg")
snd_void_lvl2_m_3 = caster_load(path_sfx+"Void\CollectTone_lvl2_mega_03.ogg")
snd_void_lvl2_m_4 = caster_load(path_sfx+"Void\CollectTone_lvl2_mega_04.ogg")
snd_void_lvl2_m_5 = caster_load(path_sfx+"Void\CollectTone_lvl2_mega_05.ogg")
snd_void_lvl2_m_6 = caster_load(path_sfx+"Void\CollectTone_lvl2_mega_06.ogg")
snd_void_lvl2_u_1 = caster_load(path_sfx+"Void\CollectTone_lvl2_ultra_01.ogg")
snd_void_lvl2_u_2 = caster_load(path_sfx+"Void\CollectTone_lvl2_ultra_02.ogg")
snd_void_lvl2_u_3 = caster_load(path_sfx+"Void\CollectTone_lvl2_ultra_03.ogg")
snd_void_lvl2_u_4 = caster_load(path_sfx+"Void\CollectTone_lvl2_ultra_04.ogg")
snd_void_lvl2_u_5 = caster_load(path_sfx+"Void\CollectTone_lvl2_ultra_05.ogg")
snd_void_lvl2_u_6 = caster_load(path_sfx+"Void\CollectTone_lvl2_ultra_06.ogg")
snd_void_lvl3_h_1 = caster_load(path_sfx+"Void\CollectTone_lvl3_hyper_01.ogg")
snd_void_lvl3_h_2 = caster_load(path_sfx+"Void\CollectTone_lvl3_hyper_02.ogg")
snd_void_lvl3_h_3 = caster_load(path_sfx+"Void\CollectTone_lvl3_hyper_03.ogg")
snd_void_lvl3_h_4 = caster_load(path_sfx+"Void\CollectTone_lvl3_hyper_04.ogg")
snd_void_lvl3_h_5 = caster_load(path_sfx+"Void\CollectTone_lvl3_hyper_05.ogg")
snd_void_lvl3_h_6 = caster_load(path_sfx+"Void\CollectTone_lvl3_hyper_06.ogg")
snd_void_lvl3_m_1 = caster_load(path_sfx+"Void\CollectTone_lvl3_mega_01.ogg")
snd_void_lvl3_m_2 = caster_load(path_sfx+"Void\CollectTone_lvl3_mega_02.ogg")
snd_void_lvl3_m_3 = caster_load(path_sfx+"Void\CollectTone_lvl3_mega_03.ogg")
snd_void_lvl3_m_4 = caster_load(path_sfx+"Void\CollectTone_lvl3_mega_04.ogg")
snd_void_lvl3_m_5 = caster_load(path_sfx+"Void\CollectTone_lvl3_mega_05.ogg")
snd_void_lvl3_m_6 = caster_load(path_sfx+"Void\CollectTone_lvl3_mega_06.ogg")
snd_void_lvl3_u_1 = caster_load(path_sfx+"Void\CollectTone_lvl3_ultra_01.ogg")
snd_void_lvl3_u_2 = caster_load(path_sfx+"Void\CollectTone_lvl3_ultra_02.ogg")
snd_void_lvl3_u_3 = caster_load(path_sfx+"Void\CollectTone_lvl3_ultra_03.ogg")
snd_void_lvl3_u_4 = caster_load(path_sfx+"Void\CollectTone_lvl3_ultra_04.ogg")
snd_void_lvl3_u_5 = caster_load(path_sfx+"Void\CollectTone_lvl3_ultra_05.ogg")
snd_void_lvl3_u_6 = caster_load(path_sfx+"Void\CollectTone_lvl3_ultra_06.ogg")
snd_void_pop = caster_load(path_sfx+"Void\Pop.ogg")
snd_void_miss = caster_load(path_sfx+"Void\NetherPop.ogg")
snd_void_n_b = caster_load(path_sfx+"Void\NetherCollectBad.ogg")
snd_void_n_g = caster_load(path_sfx+"Void\NetherCollectGood.ogg")
snd_void_n_pop = caster_load(path_sfx+"Void\NetherPop.ogg")
// no super????
break*/
}
enablesounds=1}
