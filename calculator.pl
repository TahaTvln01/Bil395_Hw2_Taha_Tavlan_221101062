# Taha Tavlan 221101062

use strict;
use warnings;

my %variables;

print "Perl Calculator. Type 'exit' to quit.\n";

while (1) {
    print "> ";
    my $input = <STDIN>;
    chomp $input;
    
    last if $input eq 'exit';
    
    if ($input =~ /^([a-zA-Z_]\w*)\s*=\s*(.+)$/) {
        my ($var, $expr) = ($1, $2);
        my $result = eval_expression($expr);
        if (defined $result) {
            $variables{$var} = $result;
            print "$var = $result\n";
        }
    } else {
        my $result = eval_expression($input);
        print "Result: $result\n" if defined $result;
    }
}

sub eval_expression {
    my ($expr) = @_;
    
    $expr =~ s/([a-zA-Z_]\w*)/exists $variables{$1} ? $variables{$1} : "0"/ge;
    
    if ($expr =~ /[^0-9+\-*\/().\s]/) {
        print "Error: Invalid expression\n";
        return;
    }
    
    my $result = eval $expr;
    if ($@) {
        print "Error: Invalid calculation\n";
        return;
    }
    return $result;
}
