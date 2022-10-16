function img2 = img2coe8(imgfile, outfile)
% Create .coe file from image
% .coe file contains 8-bit words (bytes)
% each byte contains one 8-bit pixel
% color byte: [R2,R1,R0,G2,G1,G0,B1,B0]
% img2 = img2coe8(imgfile, outfile)
% img2 is 256-color image
% imgfile = input file: .bmp, .jpg, .png, etc.
% outfile = output file: .coe
% Example:
% img2 = img2coe8('loons100x100.jpg', 'loons.coe');

% Read the image
img = imread(imgfile);
h = size(img, 1); w = size(img, 2);

% Open the .coe file
s = fopen(outfile,'W');

% Print header
fprintf(s,'%s\n','; VGA Memory Map ');
fprintf(s,'%s\n','; .COE file with hex coefficients ');
fprintf(s,'; Height: %d, Width: %d\n\n', h, w);

fprintf(s,'%s\n','memory_initialization_radix=16;'); 
fprintf(s,'%s\n','memory_initialization_vector=');

% Convert color channels to binary
R = dec2bin(img(:,:,1)',8);
G = dec2bin(img(:,:,2)',8);
B = dec2bin(img(:,:,3)',8);

% Stitch together the output bytes
Outbyte = bin2dec([ R(:,1:3) G(:,1:3) B(:,1:2) ]);
img2 = img;

for i=1:h-1
    sol = i*w-w+1; % Start of line
    eol = i*w;     % End of line
    
    % Print out bytes
    fprintf(s,'%02X,',Outbyte(sol:eol,:));
    fprintf(s,'\n');
    
    % Save new image
    img2(i,:,1) = bin2dec(R(sol:eol,1:3))'*2^5';
    img2(i,:,2) = bin2dec(G(sol:eol,1:3))'*2^5';
    img2(i,:,3) = bin2dec(B(sol:eol,1:2))'*2^6';
end

% Print out the last row
fprintf(s,'%02X,',Outbyte(h*w-w+1:end-1,:));
fprintf(s,'%02X;',Outbyte(end,:));

img2(h,:,1) = bin2dec(R(h*w-w+1:end,1:3))'*2^5';
img2(h,:,2) = bin2dec(G(h*w-w+1:end,1:3))'*2^5';
img2(h,:,3) = bin2dec(B(h*w-w+1:end,1:2))'*2^6';

% Close the .coe file
fclose(s);