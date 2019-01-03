#initialise parameters
wh = randn(785,100)/1000;
wo = randn(101,10)/1000;
learnrate = 0.01;

batch_size = 50;



testdata_processed = testdata;
testdata_processed(:,785) = 1;
 
shuffle = randperm(size(traindata,1));

shuffleddata = traindata(shuffle,:);
shuffledlabels = trainlabels(shuffle,:);

num_batches = size(traindata,1)/batch_size;

#begin training
for epoch = 1:50
  epoch
  visweights;
  pause(0.4);
  for b = 1:num_batches
  
    if((b - 50*floor(b/50))==0)
      visweights;
      pause(0.1);
    end
    batch = shuffleddata((b-1)*batch_size+1:b*batch_size,:);
    batchlabels = shuffledlabels((b-1)*batch_size+1:b*batch_size,:);
    batch(:,785) = 1;
    
    
    hid = activation(batch*wh);
    #dropout_matrix = rand(size(hid))>0.5;
    #hid.*dropout_matrix;
    
    hidb = hid;
    hidb(:,101) = 1;
    
    out = hidb*wo;
    
    error = out-batchlabels;
    mean_squared_error = mean(error(:).^2);
    
    od = error;
    hd = error*wo';
    hd = hd(:,1:100);
    hd = hd.*activation_gradient(hid);
    #hd = hd.*dropout_matrix;
    
    wo_d = (od'*hidb)';
    wh_d = (hd'*batch)';
    
    wo = wo - wo_d*learnrate/batch_size;
    wh = wh - wh_d*learnrate/batch_size;
  end
  hid_test = activation(testdata_processed*wh);
  hidb_test = hid_test;
  hidb_test(:,101) = 1;
  out_test = hidb_test*wo;
  
  mean_squared_test = mean((out_test(:)-testlabels(:)).^2)
  [a,label_indices] = max(testlabels');
  [a,output_indices] = max(out_test');
  
  accuracy = mean(label_indices==output_indices)
  
end