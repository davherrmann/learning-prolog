% Das Programm terminiert, da für as_search/1 durch den Einsatz des cut-Operators
% nur genau einmal nach einem erfolgreichen Beweis gesucht wird. Wenn 'genug'
% eingegeben wurde, ist der Beweis von as_search/1 erfolgreich.
% Würde der cut-Operator nicht eingesetzt werden, würde durch das Literal fail
% der Beweis der Anfrage 'as_search(...), fail.' trotz erfolgreich bewiesenem
% as_search/1 fehlschlagen. Deshalb würde durch das Backtracking ein weiterer
% Beweis für as_search/1 gesucht werden, was zum erneuten Durchlaufen der
% Schleife führen würde.
