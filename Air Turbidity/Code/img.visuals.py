numFaces = 600;
[x,y,z] = sphere(numFaces);
xyz2d = [x(:), y(:), z(:)];
xyz3d = cat(3,x,y,z);
img = imresize(imread('example.jpg'), [numFaces+1, numFaces+1]);
color_matrix_2d = reshape(img, [], 3);
color_matrix_3d = img;
pcshow(xyz2d, color_matrix_2d); title('data arranged as 2d')
pcshow(xyz3d, color_matrix_3d); title('data arranged as 3d')