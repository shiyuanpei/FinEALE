% Graded mesh of a domain composed of circles with 2 subregions.
h=4.8/4;

[fens,fes,groups,edge_fes,edge_groups]=targe2_mesher({...
    'curve 1 arc -12 0 12 0 Center 0 -8 rev',...
    'curve 2 arc 12 0 -12 0 Center 0 8 reversed',...
    'curve 3 arc -12 0 12 0 Center 0 -8 ',...
    'curve 4 arc 12 0 -12 0 Center 0 8 ',...
    ['subregion 1  property 1 boundary 1 2 hole 3 4 '],...
    ['subregion 2 property 2 boundary -3 -4 '],...
    ['m-ctl-point constant ' num2str(h)],...
    ['m-ctl-point 1 xy 12 0 near ' num2str(h/10) ' influence ' num2str(h/8)]
    }, 1.0);
drawmesh({fens,fes},'fes','facecolor', 'magenta');
view(2); pause(1)
