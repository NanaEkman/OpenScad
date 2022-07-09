module gabinete(pbcLargura, pedAltura, pfd, esp){
    
    //pBaixo
    translate([0,-esp*2,0]) cube([esp+pbcLargura+esp, pfd+esp*2, esp]);
    
    //pCima
    translate([0,-esp*2,pedAltura+esp]) cube([esp+pbcLargura+esp*2, pfd+esp, esp]);

    //pEsquerda
    translate([0,0,0]) cube([esp, pfd, esp+pedAltura+esp]);
    
    //pDireita
    translate([pbcLargura+esp,0,0]) cube([esp, pfd, esp+pedAltura+esp]);
    
    //pFundo
    translate([0,pfd,0]) cube([esp+pbcLargura+esp, esp, esp+pedAltura+esp]);
    
    //pPorta
    translate([0,-esp,esp]) rotate($t*-90,0,0) cube([esp+pbcLargura+esp, esp, pedAltura]);
    
}

//espessura das placas
esp = 1.6;

gabinete (55, 65, 60, esp);
