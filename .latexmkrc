
# This shows how to use 
# the glossaries package (http://www.ctan.org/pkg/glossaries)
# the glossaries-extra package (http://www.ctan.org/pkg/glossaries-extra)
# with latexmk.

# N.B. There is also the OBSOLETE glossary package
# (http://www.ctan.org/pkg/glossary), which has some differences.  See items
# 2 and 3

# 1. If you use the glossaries or the glossaries-extra package, then you use:

   add_cus_dep( 'acn', 'acr', 0, 'makeglossaries' );
   add_cus_dep( 'glo', 'gls', 0, 'makeglossaries' );
   $clean_ext .= " acr acn alg glo gls glg";
   sub makeglossaries {
      my ($base_name, $path) = fileparse( $_[0] );
      pushd $path;
      my $return = system "makeglossaries", $base_name;
      popd;
      return $return;
   }


# 2. If you use the OBSOLETE glossary package, then you can do

   add_cus_dep( 'glo', 'gls', 0, 'makeglo2gls' );
   sub makeglo2gls {
       system("makeindex -s \"$_[0].ist\" -t \"$_[0].glg\" -o \"$_[0].gls\" \"$_[0].glo\"" );
   }

# 2. If you use the OBSOLETE glossary package, then you can do
#    the following for acronyms:

    # ONLY FOR PACKAGE glossary, NOT FOR glossaries and glossaries-extra
    add_cus_dep( 'acr', 'acn', 0, 'makeacr2acn' );
    sub makeacr2acn {
      system( "makeindex -s \"$_[0].ist\" -t \"$_[0].alg\" -o \"$_[0].acn\" \"$_[0].acr\"" );
    }

# ===> WARNING: In the current glossaries and glossaries-extra packages
#      the roles of the .acr and .acn files are exchanged, so the above
#      code will fail with the more modern packages.
