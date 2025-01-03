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

# nested sources will be flattened
colemans_custom_sauce = ['src/main.cc', kak_srcs_cc, version_file]
inc = include_directories('src')

executable('kak', sources : colemans_custom_sauce,
           include_directories : inc,
           install : true)
install_man('doc/kak.1')
meson.add_install_script('contrib/meson-install.sh')
