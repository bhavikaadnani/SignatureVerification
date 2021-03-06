imgSets = imageSet('Dataset/', 'recursive');
feature1 = [];
for k = 1:length(imgSets)
   
    for l = 1:imgSets(k).Count
   
        Input_image = read(imgSets(k), l);
        if size(Input_image, 3) == 3
            Input_image = rgb2gray(Input_image);
            J = im2single(Input_image);
            %[FRAMES,DESCRS] = vl_dsift(J);
            
        end
        lbp_feature = extractLBPFeatures(Input_image);
        %F = horzcat(F, lbp_feature);
%         [m, n] = size(Input_image);
%          F = [];
%         m1 = floor(m/8) * 8;
%         n1 = floor(n/8) * 8;
%          wndSize=5;
%         % LBPfeatures = dense_vl_lbp( J,wndSize );
%         for i = 1 : floor(m/8) : m1
%             for j = 1 : floor(n/8) : n1
%                 wndSize=5;
%          %       LBPfeatures = dense_vl_lbp( J,wndSize );
%                 lbp_feature = extractLBPFeatures(Input_image(i:floor(i+m/8-1), j:floor(j+n/8-1)));
%           %     [hog1,visualization] = extractHOGFeatures(J,'CellSize',[2 2]);
%                F = horzcat(F, lbp_feature);
%               
%             end
%         end
       %F = horzcat(F, k);
        feature1 = [feature1; lbp_feature];
    end
end
save('FeatureT.mat','feature1');


