function [ out ] = EMD1D( u, v )
%  EMD1D - Compute Earthmover's distance between histogram u and v
%--------------------------------------------------------------------------
%   Params: u - histogram 1
%           v - histogram 2
%
%   Returns: out - the Earthmover's Distance between the two histograms.
%
%--------------------------------------------------------------------------

N = length(u);
cumDif = zeros(N+1,1);

for i = 1:N
    cumDif(i+1) = cumDif(i) + u(i) - v(i);
end

cumDif = abs(cumDif);
out = sum(cumDif);

end
