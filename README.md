# How to Run Your Assembly Code

Your code is written in **16-bit DOS assembly** (MASM/TASM syntax). Here are your options:

## Option 1: Using DOSBox + MASM (Recommended)

### Step 1: Install DOSBox
```bash
sudo apt-get install dosbox
```

### Step 2: Download MASM
- Download MASM from Microsoft or use a DOS development environment
- Extract it to a folder (e.g., `~/masm`)

### Step 3: Prepare your code
1. Rename `code.cpp` to `code.asm`
2. Fix the syntax (there's a typo: `Code Ends` should be `Code ENDS`)

### Step 4: Run in DOSBox
```bash
dosbox
```
Then inside DOSBox:
```
mount c ~/masm
c:
masm code.asm
link code.obj
code.exe
```

## Option 2: Using Online Emulator (Easiest)

1. Go to **https://www.tutorialspoint.com/compile_assembly_online.php** or
2. Use **https://www.jdoodle.com/compile-assembler-nasm-online/**
3. Copy your code and run it

## Option 3: Using emu8086 (Windows/Linux)

If you have emu8086 installed:
1. Open emu8086
2. Create new file
3. Paste your code
4. Click "Emulate" button

## Option 4: Convert to Modern NASM (Advanced)

For 64-bit Linux, you'd need to rewrite the code significantly as it uses 16-bit segments.

---

## Quick Fix Needed

Your code has a typo on line 20: `Code Ends` should be `Code ENDS` (uppercase)



