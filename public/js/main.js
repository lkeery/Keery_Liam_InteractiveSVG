(() => {
    console.log("Connected!");

    //let myTest = new Vivus('interactive-svg', { duration: 200 });

    const buttons = document.querySelectorAll('.playButtons'),
        mp3 = document.querySelector('audio');

    function showData(spotifyData) {
        const streams = document.querySelector('.streams');
        const artist = document.querySelector('.artist');
        const song = document.querySelector('.song-title');

        streams.textContent = `${spotifyData.Streams}`;
        artist.textContent = `${spotifyData.Artist}`;
        song.textContent = `${spotifyData.Song}`;

        let audiosrc = `music/${spotifyData.Song.split(" ").join("").toLowerCase()}.mp3`;
        mp3.src = audiosrc;

        mp3.load();
        mp3.play();
    }

    function fetchData(event) {

        event.preventDefault();

        let url = `/song/${this.getAttribute('href')}`;

        fetch(url) // get data
            .then(res => res.json()) // parse JSON result into plain obj
            .then(data => {
                console.log('Database result is: ', data);

                showData(data);
            })
            .catch((err) => {
                console.log(err)
            });
    }

    buttons.forEach(button => button.addEventListener('click', fetchData));
})();