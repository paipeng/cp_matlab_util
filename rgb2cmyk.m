function cmyk = rgb2cmyk(rgb)
    [h,w,c] = size(rgb);
    cmyk = zeros(h,w,4);
    for y=1:h
        for x =1:w
            C = 1 - rgb(y,x,1);
            M = 1 - rgb(y,x,2);
            Y = 1 - rgb(y,x,3);
            cmyk(y,x,4) = min([C M Y]);
            
            cmyk(y,x,1) = C - cmyk(y,x,4);
            cmyk(y,x,2) = M - cmyk(y,x,4);
            cmyk(y,x,3) = Y - cmyk(y,x,4);
        end
    end