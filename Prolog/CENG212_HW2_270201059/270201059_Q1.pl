course('CENG212').
course('CENG213').
course('CENG214').
course('CENG215').
course('CENG216').
course('CENG218').
course('CENG222').
course('CENG113').
course('CENG112').
course('CENG115').
course('CENG311').
course('CENG211').

head_of_department('Cuneyt F. Bazlamacci').

vice_chair('Nesli Erdogmus').
vice_chair('Mustafa Ozuysal').

professor('Onur Demirors').
professor('Cuneyt F. Bazlamacci').

associate_profesor('Tolga Ayav').
associate_profesor('Tugkan Tuglular').
associate_profesor('Mustafa Ozuysal').
associate_profesor('Yalin Bastanlar').

assistant_professor('Nesli Erdogmus').
assistant_professor('Selma Tekir').
assistant_professor('Isil Oz' ).
assistant_professor('Damla Oguz').
assistant_professor('Serap Sahin').
assistant_professor('Burak Galip Aslan').

research_assistant('Adil Coban').
research_assistant('Altug Yigit').
research_assistant('Burak Topcu').
research_assistant('Ersin Cine').
research_assistant('Didem Ozturk').
research_assistant('Leyla Tekin').
research_assistant('Emre Dincer').
research_assistant('Huseyin Unlu').
research_assistant('Serhat Caner').

assists('Huseyin Unlu','CENG212').
assists('Leyla Tekin','CENG212').
assists('Leyla Tekin','CENG214').
assists('Serhat Caner','CENG212').

is_in_administiration(X) :-
    head_of_department(X) ; vice_chair(X).

is_assistant_of(X,Y) :-
    research_assistant(X),
    assists(X,Y),
    write(X),write(' is assistant of '),write(Y),nl.

is_faculty_member(X) :-
    professor(X) ; associate_profesor(X) ; assistant_professor(X).

can_teach(X) :- is_faculty_member(X).

teaches('Cuneyt F. Bazlamacci','CENG112').
teaches('Damla Oguz','CENG212').
teaches('Nesli Erdogmus','CENG113').
teaches('Nesli Erdogmus','CENG222').
teaches('Burak Galip Aslan','CENG214').


are_in_common_course(X,Y) :-
    teaches(X,Z),assists(Y,Z),
    write(X),write(' and '),write(Y),write(' are in common course : '),write(Z),nl.

/*
    I assumed that course should have one instructor and at least one
    research asssistant.

    */

has_enough_staff_to_instruct(X) :-
    teaches(Z,X),can_teach(Z),
    assists(Y,X),research_assistant(Y).


are_given_by_same_instructor(X,Y) :-
    teaches(Z,X),teaches(Z,Y),
    write(Z),nl.













