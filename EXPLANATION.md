# Explanation of Variable Declarations

## Line 4: `b DW  4231h`

**Breaking it down:**
- **`b`** = Variable name (like a box with a label)
- **`DW`** = "Define Word" = Reserve 16 bits (2 bytes) of memory
- **`4231h`** = The value stored in variable `b` (in hexadecimal)

**In simple terms:**
- Create a variable named `b`
- Make it big enough to store a 16-bit number (2 bytes)
- Put the value `4231h` (which is 16945 in decimal) into it

**Example:** Think of it like: `int b = 4231;` in C language

---

## Line 5: `sum Dw  ?`

**Breaking it down:**
- **`sum`** = Variable name (another box with a label)
- **`Dw`** = "Define Word" = Reserve 16 bits (2 bytes) of memory (same as DW, just lowercase)
- **`?`** = Uninitialized = Don't put any value yet, just reserve space

**In simple terms:**
- Create a variable named `sum`
- Make it big enough to store a 16-bit number (2 bytes)
- Leave it empty for now - we'll put a value in it later

**Example:** Think of it like: `int sum;` in C language (declared but not initialized)

---

## Key Differences:

| Feature | `b DW 4231h` | `sum Dw ?` |
|---------|--------------|------------|
| **Has a value?** | ✅ Yes (4231h) | ❌ No (uninitialized) |
| **Purpose** | Input variable | Output variable (will store result) |
| **When value set** | At program start | During program execution (line 18) |

---

## In Your Program:

1. **`b`** starts with value `4231h`
2. **`A`** (line 3) starts with value `1234h`
3. Program adds A + B → result goes into **`sum`** (line 18)
4. So `sum` is like a container waiting to hold the answer!

---

## Memory Layout:

```
Memory Address    Variable    Value
─────────────────────────────────────
[some address]    A          1234h  (initialized)
[some address+2]  b          4231h  (initialized)
[some address+4]  sum        ????   (empty, will be filled later)
[some address+6]  carry      00h    (initialized to 0)
```

---

## Why Use `?` Instead of `0`?

- `sum Dw ?` = "I don't know what value will be here yet"
- `sum Dw 0` = "I'm setting it to zero first"
- Using `?` tells the assembler: "Just reserve space, don't initialize it"

In your program, `sum` will get its value when the program runs (line 18: `MOV SUM, AX`), so there's no need to initialize it to zero first.


