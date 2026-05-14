# ROS Main Full - Robot Operating System Projects

A comprehensive ROS (Robot Operating System) project suite containing multiple robot control exercises and advanced perception/navigation tasks.

## Project Overview

This workspace contains two main ROS projects:

1. **ROS** - Main catkin workspace with exercises and advanced tasks
2. **ROS_Turtle_bot** - TurtleBot-specific robotics project

## Main Components

### ROS Workspace (Primary)

The main ROS workspace (`ROS/`) contains the following packages:

#### Exercises (exercise1-8, Exercise 9)
- **Purpose**: Educational exercises for learning ROS fundamentals
- **Contents**: Various ROS concepts including topics, services, transforms, and custom messages
- Each exercise introduces incremental complexity in ROS programming

#### Tasks Package (`tasks`)
- **Primary Function**: Face detection and human tracking with robot navigation
- **Key Features**:
  - Real-time face detection using OpenCV
  - Marker visualization in RVIZ
  - Integration with `move_base` for autonomous navigation
  - Sound output capabilities via `sound_play`
  - Map processing and occupancy grid handling
  - Odometry tracking and pose management
- **Key Dependencies**:
  - roscpp (C++ ROS client library)
  - cv_bridge (Computer Vision bridge for ROS)
  - tf/tf2 (Transform library for coordinate frames)
  - sensor_msgs (sensor data messages)
  - PCL (Point Cloud Library)

#### Task2 Package (`task2`)
- **Primary Function**: Colored cylinder detection and recognition
- **Key Features**:
  - Point cloud segmentation using PCL (Point Cloud Library)
  - 3D object detection (cylinder fitting)
  - Color classification (Red, Green, Blue, Yellow)
  - RGB color normalization and matching
  - 3D visualization of detected objects using markers
  - Transform handling for coordinate conversion
- **Algorithm**: Uses RANSAC (Random Sample Consensus) for cylinder model fitting
- **Output**: Publishes detected cylinder positions, colors, and orientations

#### Exercise 9: Food Classification
- Specialized exercise focusing on food image classification

### ROS TurtleBot Workspace

The `ROS_Turtle_bot` workspace contains TurtleBot-specific packages:
- **Turtlebot_packs_part1**: First part of TurtleBot exercises
- **Turtlebot_packs_part2**: Second part of TurtleBot exercises

## Workspace Structure

```
ros_main_full/
├── ROS/                    # Main catkin workspace
│   ├── src/               # Source code
│   │   ├── exercise1-8/   # Educational exercises
│   │   ├── Exercise 9/    # Food classification
│   │   ├── tasks/         # Face detection & navigation
│   │   ├── task2/         # Cylinder detection
│   │   └── CMakeLists.txt # Catkin configuration
│   ├── build/             # Build directory (catkin build output)
│   ├── devel/             # Development space (executables, libraries)
│   └── my_maps/           # SLAM/navigation maps
├── ROS_Turtle_bot/        # TurtleBot-specific project
│   ├── src/
│   │   ├── Turtlebot_packs_part1/
│   │   └── Turtlebot_packs_part2/
│   ├── build/
│   └── devel/
└── README.md

```

## Key Technologies & Libraries

- **ROS**: Robot Operating System middleware
- **Catkin**: ROS build system
- **OpenCV**: Computer vision library for image processing and face detection
- **PCL (Point Cloud Library)**: 3D point cloud processing
- **TensorFlow/PyTorch**: Potentially used for deep learning models (Food classification)
- **cv_bridge**: Bridge between ROS and OpenCV
- **TF/TF2**: Coordinate transformation libraries
- **Sound Play**: Audio output for robots
- **move_base**: Navigation and autonomous movement

## How It Works

### Face Detection & Navigation Task (tasks package)
1. **Subscribe** to camera feed and face detection markers
2. **Process** detected faces using face detection algorithms
3. **Plan** navigation routes to positions in front of detected faces
4. **Navigate** robot to goals using move_base
5. **Visualize** results with markers in RVIZ
6. **Provide Feedback** via sound output

### Cylinder Detection Task (task2 package)
1. **Acquire** 3D point cloud data from camera/LiDAR
2. **Filter** and downsample point cloud (voxel grid)
3. **Estimate** surface normals
4. **Fit** RANSAC model to detect cylinders
5. **Extract** cylinder parameters (center, radius, orientation)
6. **Classify** cylinder color using RGB normalization
7. **Publish** detected cylinders with color labels
8. **Visualize** in RVIZ with markers

## Building the Project

To build the workspace:

```bash
cd ROS
catkin_make
```

## Running the Project

After building, source the setup file:

```bash
source ROS/devel/setup.bash
```

Then launch individual packages:

```bash
# For face detection task
roslaunch tasks main_task.launch

# For cylinder detection task
roslaunch task2 cylinder_detection.launch
```

## Output & Visualization

- **RVIZ Markers**: Detected faces/cylinders displayed as 3D markers
- **ROS Topics**: Publish detected objects, navigation goals, and pose information
- **Audio Feedback**: Robot provides audio cues during task execution
- **Navigation**: Autonomous movement using move_base action server