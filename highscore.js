const highscoreForm = document.getElementById("highscoreForm");

highscoreForm.addEventListener("submit", submitScore);

function submitScore(event) {
    event.preventDefault();

    const highscore = {
        score: Number(document.getElementById("score").value)
    };

    console.log("High score form submitted:", highscore);
}
