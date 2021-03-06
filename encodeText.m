% Encode a string into a vector of numbers 0 through 26
function encodedText = encodeText(encryptionMatrix)
%% Take in and get size of image matrix
[m,n] = size(encryptionMatrix);            %Gets size of encryption matrix
%% If image not square, stop. Else continue w/ encryption
if m~=n
    error('Image must be square')
end
% Request message, store as string, convert to ASCII numbers
prompt = 'Input text to be encoded: ';
originalMessage = input(prompt,'s');  
toNumbers = double(originalMessage)-96;   
% Fix message into a matrix that fits the encryption matrix, then encrpyt
encodingMatrix = double(vec2mat(toNumbers,m)+63);
encryptionMatrix = double(encryptionMatrix);
encodedTextMatrix = encodingMatrix * encryptionMatrix;
encodedText = encodedTextMatrix;
%% For decoding later
%toText = char(toNumbers+96);               %Takes vector, converts to text
end