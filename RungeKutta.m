    function s=dfRK(a,b,N,u0)​

    u=inline('3*exp(-x/2)+x-2');​

    f=inline('0.5*(x-u)','x','u');​

    h=(b-a)/N;​

    v(1)=u0;​

    x(1)=a;​

    w(1)=u(x(1));​

    for i=2:N+1​

        x(i)=x(i-1)+h;​

        k1=f(x(i-1),v(i-1));​

        k2=f(x(i-1)+0.5*h,v(i-1)+0.5*h*k1);​

        k3=f(x(i-1)+0.5*h,v(i-1)+0.5*h*k2);​

        k4=f(x(i-1)+h,v(i-1)+h*k3);​

        v(i)=v(i-1)+(h/6)*(k1+2*k2+2*k3+k4);​

        w(i)=u(x(i));​

    end​

    s=[x' v' w'];​

    plot(x,v,'r',x,w,'g')​

    end
