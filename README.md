<h1 align="center">Snake Game</h1>

### Description
A C++ arcade game rendered with GLUT/OpenGL, featuring progressive snake movement, multiple food types, shaped obstacles, collision handling, resumable sessions, and persistent high scores.

### Repository layout

```text
data/     Persistent high-score state
extras/   Gameplay screenshots
include/  Graphics utility headers
scripts/  Dependency setup
src/      Game and rendering sources
```

### Build and run
1. Install the required Ubuntu packages:
    ```
    bash scripts/install-dependencies.sh
    ```  

2. Build the game from the repository root:
    ```
    make
    ```
    
3. Run the game from the repository root so it can access `data/highscore.txt`:
    ```
    make run
    ```
    <div align="center">
      <img src = "https://github.com/SameetAsadullah/snake-game/blob/main/extras/menu-ss.png" alt = "" width="900px"/>
    </div>
    
4. Press `Enter` to select a menu option. Use the `Left Arrow` to leave the high-score screen and the arrow keys to control the snake:
    <div align="center">
      <img src = "https://github.com/SameetAsadullah/snake-game/blob/main/extras/gameplay-ss.png" alt = "" width="900px"/>
    </div>
