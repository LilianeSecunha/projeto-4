# projeto-4

- Existem outras entidades além dessas três?
	- Para um maior controle, principalmente em relação às avaliações, pode-se criar outras entidades além das citadas no enunciado, como Disciplinas e Avaliações

- Quais são os principais campos e tipos?
	- Os principais campos são os "Id", do tipo INTEGER, e o campo de nome, do tipo VARCHAR, presentes em todas as tabelas. Outro campo importante é o "nota", do tipo FLOAT, da tabela Avaliações

- Como essas entidades estão relacionadas?
	- A entidade Curso não depende de nenhuma outra entidade. A entidade Turma está relacionada com a entidade Curso, pois uma turma deve pertencer a um curso; a entidade Aluno está relacionada à Turma, pois um aluno precisa estar vinculado a uma turma; a entidade disciplina também está vinculada a um Curso, já que um curso é formado por disciplinas que são ofertadas; a entidade Avaliações está vinculada às entidades disciplina e aluno, pois para cada disciplina em que o aluno estiver inscrito ele terá ao menos uma avaliação
