#---
# Excerpted from "The Cucumber Book",
# published by The Pragmatic Bookshelf.
# Copyrights apply to this code. It may not be used to create training material, 
# courses, books, articles, and the like. Contact us if you are in doubt.
# We make no guarantees that this code is fit for any purpose. 
# Visit http://www.pragmaticprogrammer.com/titles/hwcuc for more book information.
#---
./02.sh
rm -Rf 03
cp -R 02 03
cd 03
patch --no-backup-if-mismatch -p3 < ../03.diff
../../../script/build-cukes
cat features/cash_withdrawal.cucumberansi