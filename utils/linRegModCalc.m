function y = linRegModCalc(X,lm)

% function y = linRegModCalc(X,lm)
% Calculates a linear regression model, lm, on dataset X.
% X is a [m x n] data matrix, with y a [m x 1] vector of responses
%'lm' is generated by the fitting function linRegModFit.m
% See help lsqcurvefit for more info on the different variables in the
% structure - note X is replaced with a in this case
% Requires optimization toolbox
%
% Dirk de Villiers
% Created: 2015-06-25
% Updated: 2015-06-25
%
% 2015-06-25: Basic shell and functionality
% ToDo: 'interactions', 'quadratic'

modelspec = lm.modelspec;

switch modelspec
    case 'constant'
        y = rmconstant(lm.a,X);
    case 'linear'
        y = rmlinear(lm.a,X);
    case 'interactions'
        
    case 'purequadratic'
        y = rmpurequadratic(lm.a,X);
    case 'quadratic'
        
    otherwise % Choose default here
        error('Unknown modelspec')
                
end







