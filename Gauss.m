b = input("insert a matrix --> ");
c = input("insert a conculusion matrix --> ");

a = [b c];
[m,n] = size(a);

for i=1:m-1
    for j=i+1:m
        if (a(i,i)==0)
            temp = a(i,:);
            a(i,:) = a(j,:);
            a(j,:) = temp;
        end
    end
    
    for j=i+1:m
        a(j,:) = (a(j,i)/a(i,i))*(-a(i,:))+a(j,:);
    end
end

x = zeros(1,n-1);

for i=m:-1:1
    c=0;
    for j=2:m
        c=c+a(i,j)*x(j);
    end
    x(i)=(a(i,n)-c)/a(i,i);
end

a
x'
