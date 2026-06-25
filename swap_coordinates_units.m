function swap_coordinates_units(filename1,filename2)
% This function reads one file with 2 columns of numbers (x and y
% coordinates) without units, adds the desired units and a third column of
% zeros (z coordinate).
% Gives another file with the coordinates swapped meeting the requirements.

fd1=fopen(filename1,'r');
fd2=fopen(filename2,'w');
units='in'; % units in inches, change the unit if needed.

while ~feof(fd1)
    x_coord=fscanf(fd1,'%g',1);
    xmin_coord=-x_coord;
    y_coord=fscanf(fd1,'%g',1);
    ymin_coord=-y_coord;
    z_coord=0;
    fprintf(fd2,'%g%s %g%s %g%s\n',ymin_coord,units,z_coord,units,xmin_coord,units);
end
% fprintf:
% 1st position: x coord. 2nd position: y coord. 3rd position: z coord.
% Change as desired

fclose('all');

end