function y = activation(x)
  #{y = x .* (x > 0);
  #}
  y = exp(-x);
end