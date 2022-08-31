%% Function TESTS
resultsFunctionTest = run(factorielTest)
percentPassed = 100 * nnz([resultsFunctionTest.Passed]) / numel(resultsFunctionTest);
disp([num2str(percentPassed), '% Passed.']);
writetable(table(resultsFunctionTest),'factorialFunctionTestExcel.xlsx')
%% Class tests

resultsClassTest = run(FactorielClassTest)
percentPassed = 100 * nnz([resultsClassTest.Passed]) / numel(resultsClassTest);
disp([num2str(percentPassed), '% Passed.']);
writetable(table(resultsClassTest),'factorialClassTestExcel.xlsx')