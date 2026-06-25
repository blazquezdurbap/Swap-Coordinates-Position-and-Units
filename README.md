## 🛠️ Functionality Overview

The function serves as a data pre-processor designed to format aerodynamic coordinate datasets for CAD/CAM environments (specifically SolidWorks). It performs three core operations:

1. **Dimensional Expansion:** Reads an input file containing two columns (X and Y coordinates) and appends a third column of zeros to represent the Z-axis, transforming 2D profiles into a 3D coordinate space.
2. **Unit Conversion:** Automatically applies the required unit scaling (in this implementation, defined as inches) to meet specific design specifications.
3. **Spatial Re-mapping:** Executes a coordinate system transformation and axis re-orientation.

### Operation Logic
The function maps the input coordinates $(x_{in}, y_{in})$ to the target output coordinates $(x_{out}, y_{out}, z_{out})$ as follows:
* $x_{out} = -y_{in}$
* $y_{out} = 0$ (Z-coordinate initialization)
* $z_{out} = -x_{in}$

### Customization
This script is modular by design. To modify the axis re-mapping or order, adjust the variables within the `fprintf` operation. You can assign the desired input variable to the first, second, or third position to match your specific coordinate system requirements:

```matlab
% Example modification for the fprintf operation:
% fprintf(fileID, '%f %f %f\n', -y_in, 0, -x_in);
