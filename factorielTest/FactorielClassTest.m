classdef FactorielClassTest < matlab.unittest.TestCase
    properties (TestParameter) 
        nonNegativeNumbers = struct('n1',1,'n2',2,'n3',3,'n4',4,'n5',5);
        string = struct('s1','1','s2','2','s3','3','s4','4');
        cell = {{1},{3},{55}};
        negativeNumbers=struct('nn1',-1,'nn2',-2,'nn55',-55,'nn333',-333);
        nonIntegerNumbers = struct('piNumber',pi,'n5p5',5.5,'n4p3', 4.3);
        VectorAndMatrix = {[1;2;3], [1 2; 3 4], [1 2 3];}
        complexNumbers = {{1 + i},{1 + 3*i} {-21 - 3*i}};
    end
    methods(TestClassSetup) %% runs when test class is about to close
        function setupOnce(testCase)
            %%add path to function factoriel
            addpath('factoriel');
        end
    end
    methods(TestClassTeardown) %% runs when test class is about to close
        function teardownOnce(testCase)
            %%add path to function factoriel
            rmpath('factoriel')
        end
    end
    methods(Test)
        function testFactorielPositiveNumbers(testCase, nonNegativeNumbers)
            actualSolution = factoriel(nonNegativeNumbers);
            expectedSolution = factorial(nonNegativeNumbers);  %% matlab function
            verifyEqual(testCase,actualSolution,expectedSolution, 'Factorial calculation is wrong')
        end
        function testFactorielString(testCase,string)
            verifyError(testCase,@() factoriel(string),?MException)
        end
        function testFactorielCell(testCase,cell)
            verifyError(testCase,@() factoriel(cell),?MException)
        end
        function testNegativeNumbers(testCase,negativeNumbers)
            verifyError(testCase,@() factoriel(negativeNumbers),?MException)
        end
        function testNonIntegerNumbers(testCase,nonIntegerNumbers)
            verifyError(testCase,@() factoriel(nonIntegerNumbers),?MException)
        end
        function testVectorAndMatrixNumbers(testCase,VectorAndMatrix)
            verifyError(testCase,@() factoriel(VectorAndMatrix),?MException)
        end
         function testComplexNumbers(testCase,complexNumbers)
            verifyError(testCase,@() factoriel(complexNumbers),?MException)
        end
    end
end

