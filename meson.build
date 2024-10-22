project('kakoune', 'cpp')

add_project_arguments('-std=c++2a', language : 'cpp')
add_project_arguments('-Wall', language : 'cpp')
add_project_arguments('-Wextra', language : 'cpp')
add_project_arguments('-pedantic', language : 'cpp')
add_project_arguments('-Wno-unused-parameter', language : 'cpp')
add_project_arguments('-Wno-sign-compare', language : 'cpp')

# TODO: Turn off colors on CI
# add_project_arguments('-fno-diagnostics-color', language : 'cpp')

subdir('src')

colemans_custom_sauce = ['main.cc'] 
kakoune_deps = [libkak_dep]

# The kak binary built from the main.cc in the root is a copy of src/main.cc
# The goal is to provide a custom entrypoint for hacks and experiments. As
# long as upstream keeps all the actual source code under src/ we'll be able
# to merge in changes without much trouble.
executable('kak', sources : colemans_custom_sauce,
           dependencies : kakoune_deps,
           install : true)
install_man('doc/kak.1')
meson.add_install_script('contrib/meson-install.sh')
