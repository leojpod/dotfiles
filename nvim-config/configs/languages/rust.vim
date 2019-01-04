" Run rustfmt on write of rust files

au FileType rust nmap gd <Plug>(rust-def)
au FileType rust nmap gs <Plug>(rust-def-split)
au FileType rust nmap gx <Plug>(rust-def-vertical)
au FileType rust nmap <leader>gd <Plug>(rust-doc)

let g:racer_cmd = "/User/leojeusset/.cargo/bin/racer"
let g:deoplete#sources#rust#racer_binary = "/User/leojeusset/.cargo/bin/racer"
let g:deoplete#sources#rust#rust_source_path = "/Users/leojeusset/.rustup/toolchains/nightly-x86_64-apple-darwin/lib/rustlib/src/rust/src"
let g:racer_experimental_completer = 1
let g:rust_recommended_style = 1
let g:rustfmt_autosave = 1
let g:rustfmt_command = "rustup run nightly rustfmt"
let g:ale_rust_cargo_check_tests = 1
let g:ale_rust_cargo_check_examples = 1
let g:ale_rust_rls_executable = "/usr/bin/rls"
