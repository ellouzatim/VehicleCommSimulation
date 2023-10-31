# Vehicle Communication Simulation

## Overview

This repository contains the codebase for a real-time vehicle communication simulation using OpenStreetMap (OSM) data. The project is designed to discretize the environment into hexagonal grids and simulate various aspects of vehicle-to-vehicle and vehicle-to-infrastructure communication.

## Features

- **Real-Time Simulation**: Simulate the movement and interaction of multiple vehicles in real time.
- **Hexagonal Grids**: The map is divided into hexagonal grids for more precise simulations.
- **OpenStreetMap Integration**: Utilizes OSM data for a more realistic environment.
- **Extendable**: Easy to extend to include more complex algorithms and scenarios.

## Technology Stack

- **Qt 6.6 for GUI**: To render the map and simulation interface.
- **QML for Interactive UI**: For dynamic and interactive user interface.
- **C++**: For simulation logic and algorithms.

## Getting Started

### Prerequisites

- Install [Qt 6.6](https://www.qt.io/download)

### Building and Running the Project

```bash
git clone https://github.com/your_username/VehicleCommSimulation.git

# Navigate
cd VehicleCommSimulation

# Build and run
qmake
make
./VehicleCommSimulation

