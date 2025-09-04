[![Review Assignment Due Date](https://classroom.github.com/assets/deadline-readme-button-22041afd0340ce965d47ae6ef1cefeee28c7c493a6346c4f15d667ab976d596c.svg)](https://classroom.github.com/a/SPs4PNWX)
# Lab 1 : CEG 3400 Intro to Cyber Security

## Name: Steven Ray

### Task 1: Hashing

**Reminder Deliverable:** Is your `salted-data.csv` in this repository?

Answer the following in this file:

* How many unique users are in the data?

  42

* How many salts did you create?

  42

* How many possible combinations will I need to try to figure out the secret ID
  of all students (assume I know all potential secret IDs and have your 
  `salted-data.csv`)
  
    903

* Instead of salts, if you were to use a nonce (unique number for each hashed
  field) how many possible combinations would I need to try?
  
  Assuming you knew the nonces as well, the max would be 848,253

* Given the above, if this quiz data were *actual* class data, say for example
  your final exam, how would you store this dataset?  Why? 
  
  Several potential methods:
  * Use the salt and nonce method.
  * Hide usernames using codewords for the students, that only make sense to you.
  * Old School paper charts only with extra physical security.

  The salt and nonce method would drastically increase number of tries needed to figure out the persons behind each answer. 

  Codewords only you know would remove any likelihood of someone ever managing to determine the student behind it so long as they were unique and had no way to cross check who is who.

  Paper charting removes any ability for anyone online to grab and break data. This is obviously less desireable in this day and age. And still not completely fool proof as physical locks are also easily broken. 

```bash
cat quiz_data.csv | tail -n +2 | awk -F ',' '{print $1}' | sort | uniq | nl 

```

---

### Task 2: Crypto Mining

**Reminder Deliverable:** Is your "mining" code in this repository (`mining/`)?
**Reminder Deliverable:** Is your nonce + word combos in `coins.txt`?

Answer the following:

* Paste your ***nonce+word(s) and hash(s)*** below ( either 3x `000` hashes or 1x `0000`
hash)

```
21397horse - 000002e61a074f8ea27a8647a661757f107ee79f396c2f37699da4fc8435e3ca
35946beehive - 00000bb85446af6ad86823d837458f5d3c4d17d5e0e642ea627c18077c958f5c

```

* How many words were in your dictionary?

  86

* How many nonces did your code iterate over?

  Initially I tried every nonce from 10-9,999,999,999... this was a poor choice, admittedly. 
  
  Working nonce ranges were:
  * 10-9,999
  * 1000-99,999

  Further ranges were not attempted as the time consumption grew exponentially, and received good success on these ranges already.

* What was the maximum number of hashes your code *could* compute given the above?

  From the original attempt: 859,999,999,054(If it had worked)

  From working attempts: 859,054 and 8,513,914 for a total of 9372968

* What did you think about Task 2?

  This was a fun and interesting task. It wasn't complicated, but did expose my computer to much more stress than I originally anticipated. Showed a little of how bitcoin mining works and why GPU are so in demand for doing so.

* Is there a better way than brute force to attempt to get higher valued coins?

  Theoretically. If someone were able to reverse the hashing algorithm then that would make it much better. 

* Why or why not?
  
  Without the hashing algorithm reversal then it is just a game of running through the possible combinations and finding success. If there were a simpler way then the algorithm would have been cracked and useless in this regard.

```bash
please put any cool bash one-liners or other piped commands you
learned/struggled with for task 2 here
```

