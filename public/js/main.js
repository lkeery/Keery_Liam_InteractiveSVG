(() => {
    console.log("Connected!");

    const buttons = document.querySelectorAll('.playButtons'),
        mp3 = document.querySelector('audio');

    const edImg = document.querySelector('.edImg');
    const drakeImg = document.querySelector('.drakeImg');
    const justinImg = document.querySelector('.justinImg');


    function showData(spotifyData, el) {
   
        let targetText = document.querySelector(`.text_${el}`);

        targetText.classList.remove('hide');

        const streams = document.querySelector('.streams');
        const artist = document.querySelector('.artist');
        const song = document.querySelector('.song-title');

        streams.textContent = `${spotifyData.Streams}`;
        artist.textContent = `${spotifyData.Artist}`;
        song.textContent = `${spotifyData.Song}`;

        targetText.classList.add(spotifyData.animationClass);

        let audiosrc = `music/${spotifyData.Song.split(" ").join("").toLowerCase()}.mp3`;

        audiosrc = audiosrc.replace("’", "");

        mp3.src = audiosrc;

        mp3.load();
        mp3.play();
    }

    function fetchData(event) {

        let targetEl = event.target.closest('a').getAttribute('href');

        event.preventDefault();

        let url = `/song/${this.getAttribute('href')}`;

        fetch(url) // get data
            .then(res => res.json()) // parse JSON result into plain obj
            .then(data => {
                //console.log('Database result is: ', data);

                showData(data, targetEl);
            })
            .catch((err) => {
                console.log(err)
            });
    }

    const waypoint = new Waypoint({
        element: document.querySelector('.bottom'),
        handler: function(direction) {

            let count = 2;

            let ed = document.querySelector('.ed-count');
            let drake = document.querySelector('.drake-count');
            let justin = document.querySelector('.justin-count');
    
            ed.classList.add('fadeIn');
            drake.classList.add('fadeIn');
            justin.classList.add('fadeIn');
    
            ed.textContent = `${count}`;
            drake.textContent = `${count}`;
            justin.textContent = `${count}`;
        },
        offset: '100%'
      })

    buttons.forEach(button => button.addEventListener('click', fetchData));
})();