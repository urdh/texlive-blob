#!/bin/sh
set -e
TARFILE_NAME=$1

wget http://mirror.ctan.org/systems/texlive/tlnet/install-tl-unx.tar.gz
tar xf install-tl-unx.tar.gz

TARGET=$PWD/texlive
rm -rf $TARGET

PROFILE=texlive.profile
cat > $PROFILE <<END_CAT
# texlive.profile written on Mon Mar 31 09:11:02 2014 UTC
# It will NOT be updated and reflects only the
# installation profile at installation time.
selected_scheme scheme-custom
TEXDIR $TARGET
TEXMFLOCAL $TARGET/texmf-local
TEXMFSYSCONFIG $TARGET/texmf-config
TEXMFSYSVAR $TARGET/texmf-var
TEXMFCONFIG $TEXMFSYSCONFIG
TEXMFHOME $TEXMFLOCAL
TEXMFVAR $TEXMFSYSVAR
binary_x86_64-linux 1
collection-basic 1
collection-bibtexextra 1
collection-binextra 1
collection-context 0
collection-fontsextra 0
collection-fontsrecommended 1
collection-fontutils 0
collection-formatsextra 1
collection-games 0
collection-genericextra 1
collection-genericrecommended 1
collection-htmlxml 0
collection-humanities 1
collection-langafrican 0
collection-langarabic 0
collection-langarmenian 0
collection-langcjk 0
collection-langcroatian 0
collection-langcyrillic 0
collection-langczechslovak 0
collection-langdanish 0
collection-langdutch 0
collection-langenglish 1
collection-langeuropean 1
collection-langfinnish 0
collection-langfrench 0
collection-langgerman 1
collection-langgreek 0
collection-langhebrew 0
collection-langhungarian 0
collection-langindic 0
collection-langitalian 0
collection-langlatin 0
collection-langlatvian 0
collection-langlithuanian 0
collection-langmongolian 0
collection-langnorwegian 0
collection-langother 0
collection-langpolish 0
collection-langportuguese 0
collection-langspanish 0
collection-langswedish 1
collection-langtibetan 0
collection-langturkmen 0
collection-langvietnamese 0
collection-latex 1
collection-latexextra 1
collection-latexrecommended 1
collection-luatex 1
collection-mathextra 1
collection-metapost 0
collection-music 0
collection-omega 0
collection-pictures 1
collection-plainextra 1
collection-pstricks 1
collection-publishers 1
collection-science 1
collection-texinfo 0
collection-texworks 0
collection-xetex 1
option_adjustrepo 1
option_autobackup 1
option_backupdir tlpkg/backups
option_desktop_integration 0
option_doc 0
option_file_assocs 0
option_fmt 1
option_letter 0
option_menu_integration 0
option_path 0
option_post_code 1
option_src 0
option_sys_bin /usr/local/bin
option_sys_info /usr/local/share/info
option_sys_man /usr/local/share/man
option_w32_multi_user 0
option_write18_restricted 1
portable 1
END_CAT

rm -f installation.profile
install-tl-*/install-tl -profile $PROFILE

tar -cJf $TARFILE_NAME -C $TARGET .
