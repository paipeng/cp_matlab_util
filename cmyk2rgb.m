function rgb = cmyk2rgb(cmyk)
    C = makecform('cmyk2srgb');     %srgb (standard rgb) to cmyk 
    rgb= applycform(cmyk, C);
