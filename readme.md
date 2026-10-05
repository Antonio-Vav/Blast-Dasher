# Blast Dasher

## Project Overview
Blast Dasher is a fast paced, browser based arcade game where players control a shape dodging incoming laser attacks. The application features full stack user authentication and high score tracking, allowing players to create accounts, save their top performances, and view leaderboard rankings.

## Purpose & Intended Audience
* **Purpose:** Provide an engaging, responsive browser game experience featuring real time action, user authentication, and Highscore tracking.
* **Intended Audience:** Casual web gamers and arcade enthusiasts looking to test their reaction speeds and compete with their friends.
* **User Capabilities:** Users can register an account, log in, play the game, and automatically save and view their top score.

## Business Rules
`<entity> <minimum cardinality> <relationship> <maximum cardinality> <entity>`

* `<USER>` `<may>` `<Achieve>` `<at most one>` `<Highscore>`
  * A USER may achieve at most one Highscore.
* `<Highscore>` `<must>` `<Belong to>` `<exactly one>` `<USER>`
  * Each Highscore must belong to exactly one USER.

## Entity-Relationship Diagram (ERD)
![Blast Dasher ERD](./images/Blast-Dasher-ERD.png)