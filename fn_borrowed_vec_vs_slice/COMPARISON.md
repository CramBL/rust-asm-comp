# Diff sum
## Compairing

![function diffs](fn-diff.png)
>[Click here for the raw html from the image above](fn-diff.html)

## Assembly
![Assembly diff](asm-diff.png)
>[Click here for the raw html from the image above](asm-diff.html)

## Conclusion
Passing a borrowed vector `&Vec<T>` instead of a borrowed slice `&[T]` introduces an unneccesary indirection and narrows the usability of the function (cannot be used on an array). In trivial cases this indirection will be spotted by the compiler and optimized away, but the usability of the function remains limited. If the indirection is not removed by the compiler, the cost is extra instructions that might be costly if it means another roundtrip to fetch data, the extra instructions are visible on line 9, left side of the side-by-side view:
```asm
mov     rdx, qword, ptr, [rcx, +, 16]
```
The pointer to `Vec<T>` is incremented by 16 and the address is derefenced to load it into `rdx`, this is the length of `Vec<T>`.
This operation is unneccesary when using a slice because a slice is a pointer to the first element and a length (it also includes the size of the elements).
The introduced overhead is retrieving this information through the pointer to `Vec<T>`.

The other additional overhead is loading the address of the first element into `rcx` on l. 12, left of the side-by-side view:
```asm
mov     rcx, qword, ptr, [rcx]
```
The rest of the operations are identical. The slice/vector is summed with SIMD instructions aligned to 8 elements in this case (`u32`), any leftover elements that don't align are summed one-by-one in a loop l. 43-47 on the left and l. 39-45 on the right of the side-by-side view.

