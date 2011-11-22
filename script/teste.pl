#!/usr/bin/perl

use strict;
use warnings;

my %protocol = ( 
	1	=> 	"TCP",
	2	=> 	"UDP",
	3	=> 	"DHCP",
	4	=> 	"HTTP",
	5	=> 	"FTP",
	6	=> 	"POP3",
	7	=> 	"Telnet",
	8	=> 	"SSH",
	9	=> 	"IMAP",
	10	=> 	"SMTP"
);

my %pais = (
	1	=>	"Portugal",
	2	=>	"Alemanha",
	3	=>	"Espanha",
	4	=>	"Ucrania",
	5	=>	"Polonia",
	6	=>	"Irlanda",
	7	=>	"Rep Checa",
	8	=>	"França",
	9	=>	"Dinamarca",
	10	=>	"Russia",
	11	=>	"Italia",
	12	=>	"Grecia",
	13	=>	"Croacia",
	14	=>	"Suecia",
	15	=>	"Holanda",
	16	=>	"Inglaterra"
);

my %comando = (
	1 	=>	"ls",
	2 	=>	"cat",
	3 	=>	"vim",
	4 	=>	"chmod",
	5 	=>	"make",
	6 	=>	"sudo",
	7 	=>	"cp",
	8 	=>	"mv",
	9 	=>	"rm",
	10 	=>	"cd",
	11 	=>	"find",
	12 	=>	"export"
);


my $i;

for($i = 1; $i < 100; $i++){
	my $min = (int(rand(40)));
	my $hora = (int(rand(23)));
	my $seg = (int(rand(59)));
	my $miliseg = (int(rand(200000)) + 100000);
	my $dia = (int(rand(15)) + 1);
	print "sqlite3 development.sqlite3 \"insert into intrusions values($i,\'" 
		. (int(rand(240)) + 5) . "." . (int(rand(240)) + 5) . "." . (int(rand(240)) + 5) . "." . (int(rand(240)) + 5) . "\',"
		. (int(rand(5500))) . ",\'"
		. (int(rand(240)) + 5) . "." . (int(rand(240)) + 5) . "." . (int(rand(240)) + 5) . "." . (int(rand(240)) + 5) . "\',"
		. (int(rand(5500))) . ",\'"
		. $protocol{int(rand(9)) + 1} . "\',"
		. (int(rand(9)) + 1) . ",\'"
		. "2011-11-$dia $hora:$min:$seg.$miliseg\',\'"
		. "2011-11-$dia $hora:" . ($min + (int(rand(19)))) . ":$seg.$miliseg\',\'"
		. $pais{int(rand(15)) + 1} . "\',\'"
		. $comando{int(rand(11)) + 1} 
		. "\',null,null)\"\n";
	
}
