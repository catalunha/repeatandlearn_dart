https://dartcode.org/docs/using-define-in-dart/

# pt-br
Preciso de ajudar para uma query.
Considere o contexto:
Tabela: Time
objectId | students(Relation UserProfile)
team1 | [userprofileId1]

Tabela: Resposta
objectId | student(Pointer UserProfile)
Resposta1 | userprofileId1
Resposta2 | userprofileId2

Preciso que o filtro me retorne apenas as repostas do team1



# english
I need help with a query.
Consider the context:
Table: Team
objectId | students(Relation <UserProfile>)
team1 | [userprofileId1]

Table: Answer
objectId | student(Pointer <UserProfile>)
Answer1 | userprofileId1
Answer2 | userprofileId2

I need the filter to return only the answers from team1