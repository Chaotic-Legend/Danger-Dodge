[![Static Badge](https://img.shields.io/badge/Godot%20Engine-4.6.2-blue?style=plastic&logo=godotengine)](https://godotengine.org/) ![GitHub top language](https://img.shields.io/github/languages/top/Chaotic-Legend/Danger-Dodge?logo=godotengine)

# Danger Dodge | Project Touchstone #
[Your First 2D GAME From Zero in Godot 4! (Complete Beginner Tutorial)](https://www.youtube.com/watch?v=y2s3NK8KT_o) by [Kaan Alpar](https://www.youtube.com/@KaanAlpar) ([GitHub](https://github.com/KaanAlpar))

This video tutorial offers a beginner-friendly guide to developing a fast-paced 2D obstacle dodging game in the Godot Engine, walking viewers through the key systems needed to create responsive player controls and a challenging gameplay loop. It introduces and applies key concepts, including node-based scene organization, collision setup, input mapping, hazard movement patterns, player reset conditions, and level progression. This tutorial also covers essential gameplay features, including implementing moving obstacles, handling player–hazard interactions, managing fail-and-retry mechanics, and incorporating audio cues to enhance feedback during collisions and gameplay events. It also served as the foundation for completing a structured implementation task on Feather, with the project integrated into the wider development workflow supporting the Handshake AI Project Touchstone initiative.

# Assets #
[Danger Dodge Assets](https://github.com/KaanAlpar/gint-danger-dodge/tree/main/assets) by [Kaan Alpar](https://www.udemy.com/user/kaan-alpar-22/?srsltid=AfmBOopc6_i27wdigRNqzacgR7e7PI6f2ek_Msq-WUUtZor3aF4czmn9) ([GameDev.tv](https://gamedev.tv/courses/godot-2d?ref=mzfizgj))

![Sprite Asset](assets/textures/blue_circle_smile.png)
![Sprite Asset](assets/textures/green_enemy.png)
![Sprite Asset](assets/textures/red_square_angry.png)
![Sprite Asset](assets/textures/yellow_enemy.png)

# Create a Godot task #
<ins> What application is this task for? </ins>
<br>
Godot

### **Task prompt** ###
First, enter the **task prompt** and any relevant reference files (e.g., docs, diagrams, sketches, photos, schematics).

Tasks should sound like what a manager might give a skilled but junior employee: high-level guidance with some leeway on executional details, but with very clear success metrics. What a good outcome looks like must be very clear and easy to understand.

Include any relevant **reference files** (docs, diagrams, sketches, photos, schematics, etc) needed for someone to complete this task.

Reminder on the difference between reference and starting state files:
- **Reference files**: anything the Employee should look at or read while completing the project that does not need to be directly loaded into the application (*'please make something that looks like XYZ image'*)
- **Starting state files (upload below)**: anything that the Employee would need to load into their workspace to complete the task (*'here is the existing file you should adapt'*)

<ins> Task prompt (ask the Employee) </ins>
<br>
We are beginning development of a fast-paced 2D obstacle dodging game that emphasizes precise movement, timing, and pattern recognition to create a challenging and engaging gameplay experience. Your task is to design and implement a complete player and gameplay system using a small blue circular character with cartoon eyes and a smile, establishing the foundation for movement, enemy hazards, and game flow. The system should prioritize responsiveness, clarity, and consistency by incorporating well-structured keyboard input handling, accurate collision detection, and a stable camera system that maintains a clear, zoomed-out view of the entire gameplay area. All visual assets, including the player character, enemy objects, level background, and environment elements, must render sharply and clearly without distortion, preserving strong visual clarity throughout the experience. The level background must display a simple repeating pattern with a lavender-blue environment, enclosed by a black outline that clearly defines the playable area. The completed system must support the following behaviors:

- The player can move freely in all directions using the arrow keys and stops immediately when input is released.
- The player character interacts with moving enemies, triggering a hit sound effect upon collision.
- Different enemies exhibit distinct movement patterns, including vertical, horizontal, and diagonal motion.
- The game resets when the player presses the R key or after the player character collides with an enemy.
- A "Start!" text appears at the center of the screen for two seconds, disabling player movement during that time.
- A defined goal area allows the player to complete the level and display a "You Win!" message upon contact.
- Background music begins playing at the start of the game and loops continuously.

You will organize the scene hierarchy and configure node relationships to support structured gameplay interactions, ensuring that all elements are properly layered and positioned within the level. The enemies must have distinct visual identities and assigned motion logic that drives continuous movement along fixed paths, reinforcing consistency across repeated playthroughs. These motion systems should be reusable and clearly defined so that each enemy type behaves independently while maintaining predictable behavior. You will also integrate event-driven logic to handle interactions between the player and other objects, ensuring that contact events trigger the appropriate outcomes without delay. The hit sound effect should give instant feedback during gameplay enemy interactions, while the background music should loop continuously throughout the game session. UI elements must be centered and toggled through code to reflect changes in game state, including transitions between inactive and active gameplay phases. This structure will support future additions, including more complex level layouts, additional hazard types, and new UI elements, while maintaining consistent behavior across the entire gameplay experience.

<ins> Which of the following best fits this task? </ins>
<br>
Task from scratch

<ins> How long would you anticipate an 'Employee' to complete this task? (in hours) </ins>
<br>
3

### **Starting state** ###
Please describe and include below any information about the starting state of this project:
- Existing work to be modified
- Other assets or other inputs the Employee needs to bring to be able to complete this task

Reminder on the difference between the starting state and the reference files:
- **Starting state files**: anything that the Employee would need to load into their workspace to complete the task ('*here is the existing file you should adapt*')
- **Reference files (upload above)**: anything the Employee should look at or read while completing the project that does not need to be directly loaded into the application ('*please make something that looks like XYZ image*')

<ins> Starting state description </ins>
<br>
The starting state file will consist of a newly initialized 2D Godot project that includes a selected collection of assets intended to support the development of a fast-paced obstacle dodging game. The project includes visual assets such as a background texture, a blue player-controlled character sprite, and multiple enemy or hazard sprites. Additionally, the project provides audio assets, including background music and a collision sound effect, to support gameplay feedback. The Employee is responsible for building the game using only the provided assets by setting up player, enemy, and level scenes with appropriate nodes, collision shapes, and movement logic. The Employee must implement player movement controls, configure enemy hazards that move in predictable patterns, and establish collision systems that trigger a reset or penalty when the player comes into contact with hazards. This task includes defining input actions, attaching scripts to control gameplay behavior, configuring collision detection, and integrating the provided audio for background ambiance and hit feedback. The reference files above demonstrate how to use the provided assets to create a challenging gameplay experience centered around timing, precision, and repeated attempts.

### **Overall context** ###
Finally, include context on this task and why it is realistic and representative of real-life work:
- Why is this a reasonable task for a manager to ask a junior-level employee to do?
- Is there a larger project it might be a part of?

<ins> Task context </ins>
<br>
This task is a realistic and appropriate assignment for a junior-level developer, as it focuses on implementing the core mechanics of a fast-paced 2D obstacle dodging game. It involves building fundamental systems, including player movement, hazard behavior, collision detection, reset conditions, and basic level progression. The work requires applying essential programming and problem-solving skills to translate design requirements into interactive gameplay, while integrating visuals, audio feedback, and user input into a cohesive experience. This type of task reflects common real-world development practices, where developers are responsible for prototyping gameplay systems, organizing scenes and assets, and implementing reusable logic in a clear and maintainable way. It could serve as part of a larger project focused on developing a complete arcade-style experience, as this gameplay style can expand with additional levels, more complex movement patterns, enhanced visual feedback, and user interface elements. By establishing these core systems, the task helps create a scalable framework that can support future features and iterative improvements for more difficult gameplay.

<ins> Rubric Items </ins>
<br>
1. The sprites, level background, and level elements all appear sharp.
- Run the main scene and observe that the character sprites, level background, and level elements all appear sharp and clear.
- The task prompt requires that all character sprites, level background, and level elements remain visually sharp and clear.

2. The player character is a blue circle with cartoon eyes and a smile.
- Run the main scene and observe that the player character appears as a small blue circle with cartoon eyes and a smile.
- The task prompt requires a small blue circle with cartoon eyes and a smile for the player character sprite.

3. The level background is patterned with a lavender-blue environment.
- Run the main scene, observe that the level background displays a repeating pattern, and the environment color is a lavender-blue.
- The task prompt requires that the level background display a repeating pattern, and the environment color is lavender-blue.

4. The player properly collides with the environment, enemies, and walls.
- Run the main scene and move the player character across the level to confirm it collides with enemies and the level's border walls.
- The task prompt requires functional collision bodies for the player character to interact correctly with all level environment elements.

5. The camera displays the player character accurately during gameplay.
- Run the main scene and move the player character across the level to confirm that the camera accurately displays the entire game.
- The task prompt requires a game camera to maintain a consistent zoomed-out view of the gameplay to display the player character.

6. The player moves in all directions and stops when input is released.
- Run the main scene, move the blue player in all directions with the arrow keys, then release the keys to confirm it stops immediately.
- The task prompt requires the arrow keys for movement, and the player character will stop immediately upon releasing the input.

7. The player character can touch enemies and play a hit sound effect.
- Run the main scene, collide the blue player character with any moving enemy, and observe that a hit sound effect plays.
- The task prompt requires that the blue player character can collide with all moving enemies and trigger a hit sound effect.

8. The game resets when pressing the R key or when the player gets hit.
- Run the main scene, press the R key to verify the game resets, then collide with an enemy to confirm the game resets automatically.
- The task prompt requires the game to reset when the player presses the R key or after the player character touches an enemy.

9. The level background has a black outline to enclose the level area.
- Run the main scene and observe that a black outline surrounds the level background, enclosing the entire level area boundary.
- The task prompt requires a black outline around the level background to enclose and define the playable level area.

10. The red square enemies move in a vertical up-and-down pattern.
- Run the main scene and observe that the red square enemies that look angry move upward and downward in a repeating motion.
- The task prompt requires that red square enemies with an angry face move up and down in a consistent pattern to hit the player.

11. The yellow circle enemies move in a horizontal left-to-right pattern.
- Run the main scene and observe that the yellow circle enemies that look mischievous continuously move left and right across the level.
- The task prompt requires that yellow enemies with a mischievous face move left and right in a consistent pattern to hit the player.

12. The green rhombus enemies move diagonally in a repeating pattern.
- Run the main scene and observe that the green rhombus enemies that look grumpy continually move diagonally across the level.
- The task prompt requires that green rhombus enemies with a grumpy face move diagonally in a pattern to hit the player.

13. A "Start!" text appears on the center screen when the game begins.
- Run the main scene and observe that a "Start!" message appears at the center of the game and disappears after two seconds.
- The task prompt requires a "Start!" text to briefly display in the center of the screen for two seconds when the game begins.

14. The level includes a light green area that triggers a win when touched.
- Run the main scene and move the player character into the light green rectangular area to verify that a "You Win!" message appears.
- The task prompt requires a light green rectangular end area that the blue player character can touch to display the "You Win!" text.

15. Background music plays when the game starts and loops continually.
- Run the main scene and observe that the background music begins playing and loops at the end of the music audio.
- The task prompt requires implementing looping background music that automatically starts when the game begins.
<br>
Godot - https://feather.openai.com/tasks/2b3651a3-b2b8-47e9-aae6-15e757329fb6/stage/prompt_creation - Awaiting response.
