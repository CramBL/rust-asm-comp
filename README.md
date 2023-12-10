# Exploring the difference in compiler output on Rust code

## Tools used
>Assembly generated with `cargo-asm` https://github.com/gnzlbg/cargo-asm

>Machine code analysis done with `llvm-mca` https://llvm.org/docs/CommandGuide/llvm-mca.html

>diffs generated with `delta` https://github.com/dandavison/delta

>diff output converted to html with `aha` https://github.com/theZiz/aha

## Workflow

### Comparing two functions:
1. Generate assembly with `cargo asm <target function A>`
2. Copy assembly output of target function
3. Repeat 1-2 for `<target function B>`
4. Generate diff with `delta asmA asmB -w <column_width> --side-by-side | aha --black > <my_diff>.html`
5. Feed the assembly into `llvm-mca` and examine output

> Unfortunately it is not feasible to pipe the output of `cargo asm` into `delta` directly as the output includes debug strings and the assembly of any other function in the crate (with mangled names)

## Comparisons
[Function signature argument types: `&Vec<u32>` vs. `&[u32]`](/fn_borrowed_vec_vs_slice/COMPARISON.md)

## Ideas for investigation
* for-range vs. iter-loops
* for-range vs. raw-loops
* zero-initialized storage vs. maybe-uninit storage
* Function signature argument types: Box<str> vs. String
* Enum variant layout: Box<str> vs. String / Box<[u8]> vs. Vec<u8>

