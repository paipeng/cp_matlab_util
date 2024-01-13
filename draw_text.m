function x = draw_text( text, fontSize, width, height)
    x = ones(height, width) * 255;
    x =  insertText(x, [width/2, height/2], text, 'FontSize', fontSize, 'BoxOpacity', 0, 'AnchorPoint', 'Center');
    x = x(:,:,1);
end