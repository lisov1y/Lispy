**Lispy**
Custom Lisp language written in C

**Installation and Usage**
Copy the repo with all Lispy source files:
> git clone https://github.com/lisov1y/Lispy

You need to create an executable file. Makefile will you with this. Just run this command in your terminal:
> make

To run Lispy do this:
> ./lispy

**Q-Expressions**

This stands for quoted expression, and is a type of Lisp Expression that is not evaluated by the standard Lisp mechanics. When encountered by the evaluation function Q-expressions are left exactly as they are. This makes them ideal for a number of purposes. We can use them to store and manipulate other Lisp values such as numbers, symbols, or other S-Expressions themselves.

**Functions**

| Name        | Description           |
| ------------- |:-------------:|
|`list`| Takes one or more arguments and returns a new Q-Expression containing the arguments|
|`head`| Takes a Q-Expression and returns a Q-Expression with only of the first element|
|`tail`| Takes a Q-Expression and returns a Q-Expression with the first element removed|
|`join`| Takes one or more Q-Expressions and returns a Q-Expression of them conjoined together|
|`eval`| Takes a Q-Expression and evaluates it as if it were a S-Expression|
**Examples**

>lispy> list 1 2 3 4
>{1 2 3 4}

>lispy> {head (list 1 2 3 4)}
>{head (list 1 2 3 4)}

>lispy> eval {head (list 1 2 3 4)}
>{1}

>lispy> tail {tail tail tail}
>{tail tail}

>lispy> eval (tail {tail tail {5 6 7}})
>{6 7}

>lispy> eval (head {(+ 1 2) (+ 10 20)})
>3

**Sources**
http://buildyourownlisp.com/
