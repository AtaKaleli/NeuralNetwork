function features = featureExtractor(images)
              

numberOfImages = numel(images);

%I created 908x1 cell for storing the resized features
resizedFeatures = cell(numberOfImages, 1); 

% I created 908x1 cell for storing the extractedFeatures
features= cell(numberOfImages, 1); 

%I resized all the images to the same size
for i = 1:numberOfImages
   %based on the lecture notes (week11), I decided feature size as 32x32x3
   resizedFeatures{i} = imresize(images{i},[32,32]);
   %After resizing, I used "reshape" build in function to make the image as a
   %one row vector.
   features{i} = reshape(resizedFeatures{i}, 1, []);
end



%saving features as  "features.mat"
save("features.mat", "features", "-v7.3");

end