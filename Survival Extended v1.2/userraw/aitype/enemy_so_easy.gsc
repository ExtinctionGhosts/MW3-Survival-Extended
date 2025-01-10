// IW5 GSC SOURCE
// Decompiled by https://github.com/xensik/gsc-tool

main()
{
    self._id_3AA1 = "";
    self._id_3AA2 = "riotshield.csv";
    self.team = "axis";
    self.type = "human";
    self._id_218D = "riotshield";
    self.accuracy = 0.2;
    self.health = 100;
    self.secondaryweapon = "iw5_riotshield_so";
    self._id_20A3 = "fnfiveseven";
    self.grenadeweapon = "fraggrenade";
    self.grenadeammo = 2;

    if ( isai( self ) )
    {
        self setengagementmindist( 0.0, 0.0 );
        self setengagementmaxdist( 256.0, 1024.0 );
    }

    self.weapon = "iw5_g36c_mp";
    switch ( codescripts\character::get_random_character( 2 ) )
    {
        case 0:
            _id_05DA::main();
            break;
        case 1:
            _id_05DB::main();
            break;
    }
}

spawner()
{
    self setspawnerteam( "axis" );
}

precache()
{
    _id_0609::precache();
    _id_060A::precache();
    _id_05DA::precache();
    _id_05DB::precache();
    precacheitem( "iw5_riotshield_so" );
    precacheitem( "fnfiveseven" );
    precacheitem( "fraggrenade" );
    _id_05C8::_id_3AD6();
}
