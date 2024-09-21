project('kakoune', 'cpp')

add_project_arguments('-std=c++2a', language : 'cpp')
add_project_arguments('-Wall', language : 'cpp')
add_project_arguments('-Wextra', language : 'cpp')
add_project_arguments('-pedantic', language : 'cpp')
add_project_arguments('-Wno-unused-parameter', language : 'cpp')
add_project_arguments('-Wno-sign-compare', language : 'cpp')
add_project_arguments('-Wno-init-list-lifetime', language : 'cpp')
add_project_arguments('-Wno-stringop-overflow', language : 'cpp')

# TODO: Turn off colors on CI
# add_project_arguments('-fno-diagnostics-color', language : 'cpp')

subdir('src')

colemans_custom_sauce = ['main.cc'] 
kakoune_deps = [libkak_dep]

executable('kak', sources: colemans_custom_sauce,
           dependencies : kakoune_deps,
           install : true)

