// IW5 GSC SOURCE
// Decompiled by https://github.com/xensik/gsc-tool

main()
{
    self._id_3AA1 = "";
    self._id_3AA2 = "";
    self.team = "allies";
    self.type = "human";
    self._id_218D = "riotshield";
    self.accuracy = 0.2;
    self.health = 100;
    self.secondaryweapon = "iw5_riotshield_so";
    self._id_20A3 = "";
    self.grenadeweapon = "";
    self.grenadeammo = 0;

    if ( isai( self ) )
    {
        self setengagementmindist( 256.0, 0.0 );
        self setengagementmaxdist( 768.0, 1024.0 );
    }

    switch ( codescripts\character::get_random_weapon( 3 ) )
    {
        case 0:
            self.weapon = "iw5_mp5_mp";
            break;
        case 1:
            self.weapon = "iw5_mk46_mp";
            break;
        case 2:
            self.weapon = "iw5_g36c_mp";
            break;
    }

    switch ( codescripts\character::get_random_character( 2 ) )
    {
        case 0:
            _id_0609::main();
            break;
        case 1:
            _id_060A::main();
            break;
    }
}

spawner()
{
    self setspawnerteam( "allies" );
}

precache()
{
    _id_0609::precache();
    _id_060A::precache();
    precacheitem( "iw5_riotshield_so" );
    _id_05C8::_id_3AD6();
    precacheitem( "iw5_mk46_mp" );
    precacheitem( "iw5_g36c_mp" );
}
