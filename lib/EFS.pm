#
# This is just a set of stubs for integraiton with EFS.
package EFS;

sub check_maintenance_mode {
    my $root = q{/efs};
    my $efs = q{prod}; # or 'dev', etc.  the release/releaselink
    return ( -e qq{$root/dist/$efs/config/incr/common/etc/maintenance} );
}

1;
