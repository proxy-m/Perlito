
rm -rf librb/

mkdir librb
mkdir librb/Miniperl6
mkdir librb/Miniperl6/Ruby

cp lib/MiniPerl6/Ruby/Runtime.rb librb/Miniperl6/Ruby/Runtime.rb

perl mp6.pl -Cruby lib/Test.pm > librb/Test.rb

