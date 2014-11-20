% Compute the time derivative of the derivative of the exponential map.
%
% function m=dexpdot(x,dx)
%
function m=dexpdot(x,dx)
phi=sqrt(x'*x);
if (phi == 0)
    m=-1/2*skewmat(dx);
else
    m=(cos(phi)-sin(phi)/phi)*(x'*dx)/phi^2*eye(3,3) + ...
        (1-sin(phi)/phi)*(dx*x'+x*dx')/phi^2 + ...
        (3*sin(phi)/phi-cos(phi)-2)*(x'*dx)/phi^4*x*x' + ...
        ((sin(phi/2)/(phi/2))^2-sin(phi)/phi)*(x'*dx)/phi^2*skewmat(x) - ...
        1/2*((sin(phi/2)/(phi/2))^2)*skewmat(dx);
%     m=(1-cos(phi))/phi^3*skewmat(dx) + ...
%         (x'*dx)*(4*cos(phi)-4+phi*sin(phi))/2/phi^4*skewmat(x) + ...
%         (phi-sin(phi))/phi^3*(skewmat(dx)*skewmat(x)+skewmat(x)*skewmat(dx)) + ...
%         (x'*dx)*(3*sin(phi)-phi*cos(phi)-2*phi)/phi^5*skewmat(x)^2;
%     -1/2*skewmat(dx)-m
end
