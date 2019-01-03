more off;
load mnist_all;

traindata = [train0;train1;train2;train3;train4;train5;train6;train7;train8;train9];
trainlabels = zeros(size(traindata,1),10);

cur = 1;
trainlabels(cur:cur+size(train0,1)-1,1)=1;
cur = cur + size(train0,1);
trainlabels(cur:cur+size(train1,1)-1,2)=1;
cur = cur + size(train1,1);
trainlabels(cur:cur+size(train2,1)-1,3)=1;
cur = cur + size(train2,1);
trainlabels(cur:cur+size(train3,1)-1,4)=1;
cur = cur + size(train3,1);
trainlabels(cur:cur+size(train4,1)-1,5)=1;
cur = cur + size(train4,1);
trainlabels(cur:cur+size(train5,1)-1,6)=1;
cur = cur + size(train5,1);
trainlabels(cur:cur+size(train6,1)-1,7)=1;
cur = cur + size(train6,1);
trainlabels(cur:cur+size(train7,1)-1,8)=1;
cur = cur + size(train7,1);
trainlabels(cur:cur+size(train8,1)-1,9)=1;
cur = cur + size(train8,1);
trainlabels(cur:cur+size(train9,1)-1,10)=1;

trainlabels = single(trainlabels);
traindata = single(traindata)/255;



testdata = [test0;test1;test2;test3;test4;test5;test6;test7;test8;test9];
testlabels = zeros(size(testdata,1),10);

cur = 1;
testlabels(cur:cur+size(test0,1)-1,1)=1;
cur = cur + size(test0,1);
testlabels(cur:cur+size(test1,1)-1,2)=1;
cur = cur + size(test1,1);
testlabels(cur:cur+size(test2,1)-1,3)=1;
cur = cur + size(test2,1);
testlabels(cur:cur+size(test3,1)-1,4)=1;
cur = cur + size(test3,1);
testlabels(cur:cur+size(test4,1)-1,5)=1;
cur = cur + size(test4,1);
testlabels(cur:cur+size(test5,1)-1,6)=1;
cur = cur + size(test5,1);
testlabels(cur:cur+size(test6,1)-1,7)=1;
cur = cur + size(test6,1);
testlabels(cur:cur+size(test7,1)-1,8)=1;
cur = cur + size(test7,1);
testlabels(cur:cur+size(test8,1)-1,9)=1;
cur = cur + size(test8,1);
testlabels(cur:cur+size(test9,1)-1,10)=1;

testlabels = single(testlabels);
testdata = single(testdata)/255;