project('kakoune', 'cpp',
        default_options : ['cpp_flags=-std=c++2a -Wall -Wextra -pedantic -Wno-unused-parameter -Wno-sign-compare -Wno-init-list-lifetime -Wno-stringop-overflow'],
)

# cc = meson.get_compiler('cpp')
subdir('src')

kakoune_exe_srcs = [
  'main.cc',
]

kakoune_deps = [
  libkak_dep,
]

# Externally-built libraries must be passed to "dependencies", not "link_with"
executable('kak', sources: kakoune_exe_srcs,
           include_directories : include_directories('src'),
           dependencies : kakoune_deps)

