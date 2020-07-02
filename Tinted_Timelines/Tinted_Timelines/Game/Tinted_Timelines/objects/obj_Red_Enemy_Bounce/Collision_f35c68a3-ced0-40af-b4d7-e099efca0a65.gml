global.sharedHealth -= global.bouncerDamage;
audio_play_sound(sound_ouch, 10, false);
instance_destroy();