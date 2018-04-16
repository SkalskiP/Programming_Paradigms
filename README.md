# Programming Paradigms

The content of the repository was created as part of the course Programming paradigms at AGH University of Science and Technology. More information can be found <a href="https://ai.ia.agh.edu.pl/wiki/pl:prolog:start">here</a>.

## Setup

To install SWI-Prolog on your linux device run ```setup.sh``` script, that is located in the main repository folder.

## Quick start

For Getting started advice, please refer to the <a href="http://www.swi-prolog.org/pldoc/man?section=quickstart">SWI-Prolog Tutorials</a>.

## Prolog Basics

Prolog programs are made up of **facts** and **rules**. 

A fact asserts some property of an object, or relation between two or more objects. For example ```loves(romeo, juliet).``` is a fact and can be read as Romeo loves Juliet. ```loves``` is a **predicate**, and ```romeo``` and ```juliet``` are called **atoms**. Atom is any sequence of letters and digits, beginning with a lowercase letter. Alternatively, an atom is any sequence of characters, enclosed by single quotes ('). 

To create what is called **clause** or **rule**, we use symbol ":-", which is pronounced "if". For example: ```loves(juliet, romeo) :- loves(romeo, juliet).``` Rules allow us to infer that a property or relationship holds based on preconditions.

A **variable** is written as a sequence of letters and digits, beginning with a capital letter. Variables allow us to answer questions, for example if we write ```loves(romeo, X)``` in terminal, the output will be: ```X = juliet```

The **anonymous variable** ```_``` is the only variable where different occurrences represent different variables. Other variables that start with ```_``` are not anonymous. For example we can use ```male(_)``` to check for the existence of male predicate.

```write(+Term)``` - write Term to the current output, using brackets and operators where appropriate.
```read(-Term)``` - read the next Prolog term from the current input stream and unify it with Term.
```listing(:Pred)``` - list predicates specified by Pred.
```nl``` - write a newline character to the current output stream.]
```assert(+Term)``` - assert a clause (fact or rule) into the database. 
