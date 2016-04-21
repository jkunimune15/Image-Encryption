% image_encryption.m

mat = image_to_matrix(input('Filename of encryption image: ','s'));

code = encodeTextFixed(mat);
figure;
imshow(uint8(code*255/max(max(code))))

%mat = do_SVD(mat, min(size(mat))*.9);

decoded = decodeTextFixed(code, mat);
disp(decoded)