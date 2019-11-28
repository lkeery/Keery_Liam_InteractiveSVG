(() => {
    console.log("Connected!");

    const buttons = document.querySelectorAll('.playButtons');

    function showData(spotifyData) {
        const streams = document.querySelector('.streams');
        const artist = document.querySelector('.artist');
        const song = document.querySelector('.song-title');

        streams.textContent = `${spotifyData.Streams}`;
        artist.textContent = `${spotifyData.Artist}`;
        song.textContent = `${spotifyData.Song}`;
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