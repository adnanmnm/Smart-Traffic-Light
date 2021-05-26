function avg_each_car = CallSim(time,carnum1,carnum2,carnum3,carnum4)

  [late4one1 , xbar1] = Sim(time,carnum1);
  [late4one2 , xbar2] = Sim(time,carnum2);
  [late4one3 , xbar3] = Sim(time,carnum3);
  [late4one4 , xbar4] = Sim(time,carnum4);
  
  
  avg_each_car =late4one1+late4one2+late4one3+late4one4;
  subplot(2,2,1);
  title('Subplot 1')
  
  bar(xbar1);
  subplot(2,2,2);
  title('Subplot 2')
  
  bar(xbar2);
  subplot(2,2,3);
  title('Subplot 3')
  
  bar(xbar3);
  subplot(2,2,4);
  title('Subplot 4')
  
  bar(xbar4);
end