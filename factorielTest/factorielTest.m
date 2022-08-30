%% Main function to generate tests
function tests = factorielTest
    tests = functiontests(localfunctions);
end

%% Test Functions
function testFactorielPositiveNumbers(testCase)
    testNumber = 5;
    actualSolution = factoriel(testNumber);
    expectedSolution = factorial(5);  %% matlab function
    verifyEqual(testCase,actualSolution,expectedSolution)
end

function testFactorielZeroNumber(testCase)
    testNumber = 0;
    actualSolution = factoriel(testNumber);
    expectedSolution = factorial(0);  %% matlab function
    verifyEqual(testCase,actualSolution,expectedSolution)
end


function testFactorielNegativeNumbers(testCase)
    testVariable = -5;
    expectedSolution = false;
    try
        negativeFactorial = factoriel(testVariable);
        actualSolution = true;
    catch
        actualSolution = false;
    end
    verifyEqual(testCase,actualSolution,expectedSolution)
end

function testFactorielNonIntegerNumbers(testCase)
    testVariable = 5.5;
    expectedSolution = false;
    try
        nonIntegerFactorial = factoriel(testVariable);
        actualSolution = true;
    catch
        actualSolution = false;
    end
    verifyEqual(testCase,actualSolution,expectedSolution)
end

function testFactorielString(testCase)
    testVariable = '2';
    expectedSolution = false;
    try
        stringFactorial = factoriel(testVariable);
        actualSolution = true;
    catch
        actualSolution = false;
    end
    verifyEqual(testCase,actualSolution,expectedSolution)
end

function testFactorielCell(testCase)
    testVariable = {2};
    expectedSolution = false;
    try
        cellFactorial = factoriel(testVariable);
        actualSolution = true;
    catch
        actualSolution = false;
    end
    verifyEqual(testCase,actualSolution,expectedSolution)
end

function testFactorielVector(testCase)
    testVariable = [1,2];
    expectedSolution = false;
    try
        vectorFactorial = factoriel(testVariable);
        actualSolution = true;
    catch
        actualSolution = false;
    end
    verifyEqual(testCase,actualSolution,expectedSolution)
end

function testFactorielMatrix(testCase)
    testVariable = [1,2;3 3];
    expectedSolution = false;
    try
        matrixFactorial = factoriel(testVariable);
        actualSolution = true;
    catch
        actualSolution = false;
    end
    verifyEqual(testCase,actualSolution,expectedSolution)
end

%% Optional file fixtures 
% this function stars onlz once before calling first test function
function setupOnce(testCase)  % do not change function name
    %%create and change path to folder where factoriel is
    cd('..');
    
end
% this function starts only once after all test functions are done
function teardownOnce(testCase)  % do not change function name
    cd('factorielTest')
end

%% Optional fresh fixtures  
% this function starts before starging test function
function setup(testCase)  % do not change function name
end
% this function starts after finishing every test functions
function teardown(testCase)  % do not change function name
end