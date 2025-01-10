// IW5 GSC SOURCE
// Decompiled by https://github.com/xensik/gsc-tool

main()
{
codescripts\character::setModelFromArray(xmodelalias\alias_dogs::main());
    self.voice = "arab";
}

precache()
{
    precachemodel( "german_sheperd_dog" );
    precachemodel( "hyena" );
    codescripts\character::precachemodelarray( xmodelalias\alias_dogs::main() );
}
