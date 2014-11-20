function set_graphics_defaults(fig,options)
    % Set the graphics defaults.
    %
    %     function set_graphics_defaults(fig,options)
    %
    %         options = (optional) struct with fields
    %        FontName, FontSize, Interpreter
    %
    %
    % Examples: 
    %     set_graphics_defaults(gcf,struct('FontName', 'times'));
    %     plot ([0,1])
    %     title ('Silly')
    
    if (~ exist ('fig', 'var' )) || isempty(fig)
        fig=gcf;
    end
    if (~ exist ('options', 'var' ))
			options = [];
    end
    FontName='Times';
    if (isfield(options,'FontName'))
    	FontName = options.FontName;
    end
	FontSize=14;
    if (isfield(options,'FontSize'))
    	FontSize = options.FontSize;
    end
		Interpreter = [];
    if (isfield(options,'Interpreter'))
    	Interpreter = options.Interpreter;
    end
    set(fig, 'Color', 'White');
    set(fig, 'DefaultTextFontSize', FontSize);
    set(fig, 'DefaultAxesFontSize', FontSize);
    set(fig, 'DefaultAxesFontName', FontName);
    set(fig, 'DefaultTextFontName', FontName);
    children=get(fig,'Children');
    for i=1:length(children)
        child=children(i);
        props=get( child );
        if (strcmp(lower(props.Type),'axes' ))
            position=get( child, 'position' );
            set(child,...
                'Color', 'white', ...
                'FontUnits', 'points', ...
                'FontSize', 14, ...
                'FontAngle', 'Normal', ...
                'FontName', FontName, ...
                'GridLineStyle', ':', ...
                'Xcolor', [0, 0, 0], ...
                'Ycolor', [0, 0, 0], ...
                'Zcolor', [0, 0, 0]);
            l=get(child,'xlabel');
            set (l,'FontSize',16,...
                'FontAngle', 'Normal', ...
                'FontName',FontName);
            if (~ isempty( Interpreter ))
            	set(l, 'Interpreter', Interpreter);
            end    
            l=get(child,'ylabel');
            set (l,'FontSize',16,...
                'FontAngle', 'Normal', ...
                'FontName',FontName);
            if (~ isempty( Interpreter ))
            	set(l, 'Interpreter', Interpreter);
            end    
            l=get(child,'zlabel');
            set (l,'FontSize',16,...
                'FontAngle', 'Normal', ...
                'FontName',FontName);
            if (~ isempty( Interpreter ))
            	set(l, 'Interpreter', Interpreter);
            end    
            l=get(child,'title');
            set (l,'FontSize',18,...
                'FontAngle', 'Normal', ...
                'FontName',FontName);
            if (~ isempty( Interpreter ))
            	set(l, 'Interpreter', Interpreter);
            end    
            %             set(child, 'position', position+[0,0.02,0,-0.03]); 
        end
    end
end
%     
%     set (l,'FontSize',16);
%     l=get(gca,'ylabel');
%     set (l,'FontSize',16);
    
% set(0, 'DefaultFigureColor', 'White', ...
%        'DefaultFigurePaperType', 'a4letter', ...
%        'DefaultFigurePaperType', 'a4letter', ...
%        'DefaultUIControlbackgroundcolor', [1, 1, 1], ...
%        'DefaultUIControlFontUnits', 'points', ...
%        'DefaultUIControlFontSize', 12, ...
%        'DefaultUIControlFontAngle', 'normal', ...
%        'DefaultUIControlFontName', 'Helvetica', ...       
%        'DefaultUIControlForeGroundColor', 'black', ...
%        'DefaultAxesColor', 'white', ...
%        'DefaultAxesDrawmode', 'fast', ...
%        'DefaultAxesFontUnits', 'points', ...
%        'DefaultAxesFontSize', 14, ...
%        'DefaultAxesFontAngle', 'Normal', ...
%        'DefaultAxesFontName',FontName, ...       
%        'DefaultAxesGridLineStyle', ':', ...
%        'DefaultAxesInterruptible', 'on', ...
%        'DefaultAxesLayer', 'Bottom', ...
%        'DefaultAxesNextPlot', 'replace', ...
%        'DefaultAxesUnits', 'normalized', ...
%        'DefaultAxesXcolor', [0, 0, 0], ...
%        'DefaultAxesYcolor', [0, 0, 0], ...
%        'DefaultAxesZcolor', [0, 0, 0], ...
%        'DefaultAxesXTickMode','Auto',...
%        'DefaultAxesYTickMode','Auto',...
%        'DefaultAxesZTickMode','Auto',...
%        'DefaultAxesVisible', 'on', ...
%        'DefaultLineColor', 'Red', ...
%        'DefaultLineLineStyle', '-', ...
%        'DefaultLineLineWidth', 2, ...
%        'DefaultLineMarker', 'none', ...
%        'DefaultLineMarkerSize', 12, ...
%        'DefaultTextColor', [0, 0, 0], ...
%        'DefaultTextFontUnits', 'Points', ...
%        'DefaultTextFontSize', 14, ...
%        'DefaultTextFontName',FontName, ...
%        'DefaultTextVerticalAlignment', 'middle', ...
%        'DefaultTextHorizontalAlignment', 'left');
% warning off;       
% % set(0, 'DefaultFigureMenubar', 'none', ...
% %        'DefaultFigureNextPlot', 'add', ...
% %        'DefaultFigureColor', 'black', ...
% %        'DefaultFigureNumberTitle', 'off', ...
% %        'DefaultFigureShareColors', 'on', ...
% %        'DefaultFigurePaperType', 'a4letter', ...
% %        'DefaultUIControlbackgroundcolor', [0.702 0.702 .702], ...
% %        'DefaultUIControlFontUnits', 'points', ...
% %        'DefaultUIControlFontSize', QDefaultUIFontSize, ...
% %        'DefaultUIControlFontAngle', 'normal', ...
% %        'DefaultUIControlFontName', 'Helvetica', ...       
% %        'DefaultUIControlInterruptible', 'off', ...
% %        'DefaultUIControlForeGroundColor', 'black', ...
% %        'DefaultUIControlHorizontalAlignment', 'center', ...
% %        'DefaultUIControlSelectionHighLight', 'on', ...
% %        'DefaultUIMenuSelectionHighLight', 'on', ...
% %        'DefaultAxesColor', 'none', ...
% %        'DefaultAxesDrawmode', 'fast', ...
% %        'DefaultAxesFontUnits', 'points', ...
% %        'DefaultAxesFontSize', 12, ...
% %        'DefaultAxesFontAngle', 'normal', ...
% %        'DefaultAxesFontName', 'Helvetica', ...       
% %        'DefaultAxesGridLineStyle', ':', ...
% %        'DefaultAxesInterruptible', 'on', ...
% %        'DefaultAxesLayer', 'Bottom', ...
% %        'DefaultAxesNextPlot', 'replace', ...
% %        'DefaultAxesUnits', 'normalized', ...
% %        'DefaultAxesXcolor', [1 1 1], ...
% %        'DefaultAxesYcolor', [1 1 1], ...
% %        'DefaultAxesZcolor', [1 1 1], ...
% %        'DefaultAxesVisible', 'on', ...
% %        'DefaultLineColor', 'yellow', ...
% %        'DefaultLineLineStyle', '-', ...
% %        'DefaultLineLineWidth', 0.5, ...
% %        'DefaultLineMarker', 'none', ...
% %        'DefaultLineMarkerSize', 6, ...
% %        'DefaultLineHittest', 'off', ...
% %        'DefaultPatchHittest', 'off', ...
% %        'DefaultSurfaceHittest', 'off', ...
% %        'DefaultTextHittest', 'off', ...
% %        'DefaultTextColor', [1 1 1], ...
% %        'DefaultTextFontUnits', 'Points', ...
% %        'DefaultTextFontSize', 12, ...
% %        'DefaultTextFontName', 'Helvetica', ...
% %        'DefaultTextVerticalAlignment', 'middle', ...
% %        'DefaultTextHorizontalAlignment', 'left');