# Exploring the difference in compiler output on Rust code

## Tools used
>Assembly generated with `cargo-asm` https://github.com/gnzlbg/cargo-asm

>diffs generated with `delta` https://github.com/dandavison/delta

>diff output converted to html with `aha` https://github.com/theZiz/aha

## Workflow

### Comparing two functions:
1. Generate assembly with `cargo asm <target function A>`
2. Copy assembly output of target function
3. Repeat 1-2 for `<target function B>`
4. Generate diff with `delta asmA asmB -w <column_width> --side-by-side | aha --black > <my_diff>.html`

> Unfortunately it is not feasible to pipe the output of `cargo asm` into `delta` directly as the output includes debug strings and the assembly of any other function in the crate (with mangled names)

