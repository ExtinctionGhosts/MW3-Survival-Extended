// IW5 GSC SOURCE
// Decompiled by https://github.com/xensik/gsc-tool

main()
{
    self._id_3AA1 = "";
    self._id_3AA2 = "common_rambo_anims.csv";
    self.team = "axis";
    self.type = "human";
    self._id_218D = "militia";
    self.accuracy = 0.2;
    self.health = 150;
    self.secondaryweapon = "";
    self._id_20A3 = "";
    self.grenadeweapon = "fraggrenade";
    self.grenadeammo = 0;

    if ( isai( self ) )
    {
        self setengagementmindist( 0.0, 0.0 );
        self setengagementmaxdist( 350.0, 600.0 );
    }

    switch ( codescripts\character::get_random_weapon( 2 ) )
    {
        case 0:
            self.weapon = "iw5_m9_mp";
            break;
        case 1:
            self.weapon = "iw5_mp7_mp";
            break;
    }
    _id_05D8::main();
}

spawner()
{
    self setspawnerteam( "axis" );
}

precache()
{
    _id_05D8::precache();
    precacheitem( "fraggrenade" );
    _id_05C2::main();
}
