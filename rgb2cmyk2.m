function cmyk = rgb2cmyk2(rgb)
    C = makecform('srgb2cmyk');     %srgb (standard rgb) to cmyk 
    cmyk= applycform(rgb,C);
