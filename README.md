# WEBSOCKET.RB

## Description
This project contains a simple WebSocket server built with Ruby using the em-websocket and eventmachine libraries. The server listens for WebSocket connections and facilitates real-time communication between clients. The container runs the WebSocket server on port 3030.

## Project Links
- **Docker Hub Repository**: [estebanandres/ruby-websocket-app on Docker Hub](https://hub.docker.com/repository/docker/estebanandres/ruby-websocket-app/general)

## Getting Started

### Cloning the Repository
To clone the repository, use the following command:
```bash
git clone https://github.com/EstebanASM/WEBSOCKET.RB.git
```
Navigate to the project directory:
```bash
cd WEBSOCKET.RB
```

### Running the Application Locally (Without Docker)
#### Prerequisites
- Ensure[Ruby](https://www.python.org/downloads/) is installed on your machine.

- Install the required gems (em-websocket and eventmachine). You can do this by running:
   ```bash
   bundle install

   ```

#### Running the Application
1. Inside the project directory, start the WebSocket server with:
   ```bash
   ruby websocket_server.rb


   ```
2. Open a WebSocket client (such as your index.html file) in your browser.
   ```
   start index.html
   
   ```
3. Ensure the client connects to:
 ```
   ws://localhost:3030

   
   ```
4. Send and receive messages to test the WebSocket server functionality.

### Running the Application with Docker

To run the application with Docker, visit the Docker Hub repository for this project: [estebanandres/ruby-websocket-app on Docker Hub](https://hub.docker.com/repository/docker/estebanandres/ruby-websocket-app/general)