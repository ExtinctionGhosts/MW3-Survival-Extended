// IW5 GSC SOURCE
// Decompiled by https://github.com/xensik/gsc-tool

main()
{
    self._id_3AA1 = "";
    self._id_3AA2 = "";
    self.team = "axis";
    self.type = "human";
    self._id_218D = "regular";
    self.accuracy = 0.2;
    self.health = 150;
    self.secondaryweapon = "";
    self._id_20A3 = "";
    self.grenadeweapon = "fraggrenade";
    self.grenadeammo = 0;

    if ( isai( self ) )
    {
        self setengagementmindist( 256.0, 0.0 );
        self setengagementmaxdist( 768.0, 1024.0 );
    }

    switch ( codescripts\character::get_random_weapon( 3 ) )
    {
        case 0:
            self.weapon = "iw5_mp9_mp";
            break;
        case 1:
            self.weapon = "iw5_fmg9_mp";
            break;
        case 2:
            self.weapon = "iw5_usas12_mp";
            break;
    }
    _id_05B8::main();
}

spawner()
{
    self setspawnerteam( "axis" );
}

precache()
{
    _id_05B8::precache();
    precacheitem( "fraggrenade" );
}
