#!/usr/bin/perl -w

use strict;
use warnings;
use feature qw(switch);

sub conect
{
	my($device, $address) = @_;
	my $exit_status = system("bluetoothctl", "connect", $address);
	if ($exit_status == 0) {
		print("device $device has been connected\n");
	} else {
		print("There was some error while connecting to $device\n");
	}
}


sub disconnect
{	
	my($device, $address) = @_;
	my $exit_status = system("bluetoothctl", "disconnect", $address);
	if ($exit_status == 0) {
		print("device $device has been disconnected\n");
	} else {
		print("There was some error while disconnecting $device\n");
	}
}

my %devices = (
	"pods" => "9C:A9:C5:55:50:6B"
);

if ( @ARGV != 2 ) { die "Wrong number of needed arguments"; }
my $function = shift @ARGV;
my $device = shift @ARGV;

if ( !exists $devices{$device} ) {
	die "can't find device";
}

given( $function ) {
	when("c") { conect($device, $devices{$device}); }
	when("d") { disconnect($device, $devices{$device}); }
	default { print "I don't know that switch mate :P\n"; } 
}




