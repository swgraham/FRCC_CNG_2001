Course: CNG 2001  
Environment: Ubuntu Server (No Graphical Interface)

============================================================

# PART 1 — LINUX FILESYSTEM (AUTO-GRADED)

In this part of the lab, you will follow specific instructions and run
specific commands. Your work will be checked automatically using a
grading script.

ALL work for Part 1 must be created under:

```
~/linux_lab2
```

---

## 1. CREATE THE REQUIRED DIRECTORY STRUCTURE

Run the following commands exactly:

```
cd ~
mkdir -p linux_lab2/projects/week1
mkdir linux_lab2/notes
```

Verify your work:

```
ls -R linux_lab2
```

---

## 2. CREATE AND EDIT A FILE

Create a file named intro.txt:

```
touch linux_lab2/intro.txt
```

Edit the file using nano:

```
nano linux_lab2/intro.txt
```

Add the following content (fill in your information):
```
Name: YOUR NAME
Course: CNG 2001
Lab: Linux Filesystem Exploration
Date: YYYY-MM-DD
```
Save and exit nano:
CTRL + O, Enter
CTRL + X

---

## 3. VIEW FILE CONTENTS

Run the following commands:

```
cat linux_lab2/intro.txt
nl linux_lab2/intro.txt
less linux_lab2/intro.txt
```

(Press q to quit less)

---

## 4. COPY AND RENAME FILES

Copy intro.txt into the week1 directory:

```
cp linux_lab2/intro.txt linux_lab2/projects/week1/
```

Rename the copied file:

```
mv linux_lab2/projects/week1/intro.txt linux_lab2/projects/week1/project_intro.txt
```

---

## 5. CREATE, MOVE, AND DELETE A FILE

Create a temporary notes file:

```
touch linux_lab2/notes/notes.txt
```

Move the notes file into the week1 directory:

```
mv linux_lab2/notes/notes.txt linux_lab2/projects/week1/
```

Delete the notes file:

```
rm linux_lab2/projects/week1/notes.txt
```

Remove the now-empty notes directory:

```
rmdir linux_lab2/notes
```

---

## 6. RUN THE AUTO-GRADER

The auto-grader will verify your Part 1 work.

From the course repository directory:

```
cd ~/FRCC_CNG_2001
chmod +x grade_lab2.sh
./grade_lab2.sh
```

The script will create a results file:

```
lab2_results_<yourusername>.txt
```

This file is REQUIRED for submission.

============================================================

# PART 2 — EXPLORING YOUR VIRTUAL MACHINE (MANUAL GRADING)

In this part of the lab, NO commands are provided.

You must determine which Linux commands to use on your own.
This section will be graded by reviewing your answers and screenshots.

---

SYSTEM IDENTIFICATION

1. What is your hostname?

2. What is your IP address?

---

STORAGE AND FILESYSTEM

3. What does your filesystem look like?

4. How much disk space is in use?

Provide a screenshot that clearly shows:

- Mounted filesystems
- Disk usage information

---

ENVIRONMENT AND SHELL

5. What is your PATH?

6. What shell are you running?

---

MANUAL PAGES AND BASH

7. Use the Linux manual pages to learn about the Bash shell.

- Read the bash manual
- Find the section titled PROMPTING
- Change your shell prompt so it is visibly different

Your prompt change does NOT need to persist after logout.

Provide a screenshot showing:

- Your modified shell prompt
- A command prompt ready for input

---

SOFTWARE INSTALLATION — NETHACK

8. Install the game Nethack.

- Launch the game from the terminal
- Play until you reach Dungeon Level 3

Provide a screenshot showing:

- The Nethack game running
- Your character on Dungeon Level 3

---

SUBMISSION REQUIREMENTS

Submit the following:

1. lab1*results*<yourusername>.txt
2. Screenshots for Part 2 showing:
   - Filesystem and disk usage
   - Modified shell prompt
   - Nethack at Dungeon Level 3

Follow your instructor’s submission instructions exactly.

============================================================

NOTES AND EXPECTATIONS

- Part 1 is graded automatically
- Part 2 is graded manually
- Precision matters: paths and filenames must match exactly
- Use man pages freely
- This lab is foundational — everything builds on this
