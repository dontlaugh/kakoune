project('kakoune', 'cpp')

add_project_arguments('-std=c++2a', language : 'cpp')
add_project_arguments('-Wall', language : 'cpp')
add_project_arguments('-Wextra', language : 'cpp')
add_project_arguments('-pedantic', language : 'cpp')
add_project_arguments('-Wno-unused-parameter', language : 'cpp')
add_project_arguments('-Wno-sign-compare', language : 'cpp')
add_project_arguments('-Wno-init-list-lifetime', language : 'cpp')
add_project_arguments('-Wno-stringop-overflow', language : 'cpp')
# add_project_arguments('-fno-diagnostics-color', language : 'cpp')

# cc = meson.get_compiler('cpp')
subdir('src')

kakoune_exe_srcs = [
  'main.cc',
] + kak_srcs_cc

kakoune_deps = [
  libkak_dep,
]

# Externally-built libraries must be passed to "dependencies", not "link_with"
executable('kak', sources: kakoune_exe_srcs,
           include_directories : include_directories('src'),
           dependencies : kakoune_deps)

