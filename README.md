# Project 2, Midsemester Jam, AngelFree:

An angelic 2D game made for the Midsemester Jam in CS315.

## Third Party Solutions

- Parallax Background code modified from [Andy Maloney's Vertical Scrolling Parallax Backgrounds in Godot](https://andymaloney.com/2021/02/code/vertical-scrolling-parallax-backgrounds-in-godot/#:~:text=Background.gd.-,Here%E2%80%99s%20the%20script%3A,-Python)

## Third Party Assets

- Angel sprites from [Exuin's Angel Battle Sprite](https://emily2.itch.io/angel), licensed in the public domain under [Creative Commons Zero v1.0 Universal](https://creativecommons.org/publicdomain/zero/1.0/)
- Bat sprites from [Rentro_Ghost's Bat Sprites](https://rentro-ghost.itch.io/bat-sprites), licensed for use "in both free and commercial projects."
- Parallax background from [vnitti's Glacial Mountains: Parallax Background](https://vnitti.itch.io/glacial-mountains-parallax-background), licensed for free and commercial purposes "as long as you give the apropiate credit" as stated at the bottom of the comments on October 19th, 2022.
- Cabal font from [LJ Design Studios](https://www.fontspace.com/cabal-font-f24429), and licensed as GPL.
- Lurking Evil by [Darren Curtis](https://www.darrencurtismusic.com/), promoted by [Chosic.com](https://www.chosic.com/free-music/all/), and licensed under [Creative Commons CC BY 3.0](https://creativecommons.org/licenses/by/3.0/)

## Project Report:

### Reflection

The Midsemester Jam was a good test of the basic foundations I have worked to build so far. I can say that I had no major issues with my project; however, the one issue I did have was quickly resolved after I brought it up in class. This issue involved the player not properly detecting collisions with the bats if they collided near the top or bottom of the player sprite. Despite having no major issues with my project, I did have a specific issue where Godot would not show the player_died signal in the editor and refused to let me connect it through code. A restart of the engine fixed this.

### Self-Assessment

- [x] D-1: The repository contains a <code>README.md</code> file in its top-level directory.
- [x] D-2: The project content is eligible for an <a href="https://www.esrb.org/ratings-guide/">ESRB Rating</a> of M or less.
- [x] C-1: Your repository is well-formed, in our course organization, with an appropriate <code>.gitignore</code> file, no unnecessary files tracked, and all commit messages following <a href="https://cbea.ms/git-commit/">our commit message style guide</a>.
- [x] C-2: Your release is tagged using <a href="https://semver.org/">semantic versioning</a> where the major version is zero, the minor version is the iteration number, the patch version is incremented as usual for each change made to the minor version, and the release name matches the release tag.
- [x] C-3: You have a clear legal right to use all incorporated assets, the licenses for all third-party assets are tracked in the <code>README.md</code> file, and you have satisfied all license requirements.
- [x] C-4: The game contains instructions for how to play.
- [x] C-5: The game is stable and includes some gameplay.
- [x] B-1: The project report is complete.
- [x] B-2: The project runs with neither errors nor warnings.
- [x] B-3: The source code and project structure comply with our adopted style guides.
- [x] B-4: The game is playable with clear goals and end state.
- [x] A-1: The game includes a complete traditional player experience loop&mdash;title, gameplay, and ending&mdash;and the player has the option to play again.