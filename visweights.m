contr = 50;
for xi = 1:10
  for yi = 1:10
    v = wh(1:784,xi+10*(yi-1));
    v = sigm(contr*v);
    im = reshape(v,28,28)';
    imb((xi-1)*28+1:xi*28,(yi-1)*28+1:yi*28) = im;
      
  end
end


imshow(imb);