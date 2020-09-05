const { exec } = require('child_process');

const execute = command => {
    return new Promise((resolve, reject) =>
    {
        exec(command, (_, stdout, stderr) => {
            if (stderr) {
                reject(stderr);
            }
            else {
                resolve(stdout); 
            }
                
        });

    })
};

const removeColors = value => {
    return value.replace(/(\x9B|\x1B\[)[0-?]*[ -\/]*[@-~]/gmi, '');
};

const getStatus = async () => {
    try {
        const result = await execute('expressvpn status');
        const lines = result.split('\n');

        if (lines.length === 0) {
            return 'An invalid result';
        }

        const location = removeColors(lines[0]).trim();

        console.log(location);

    }
    catch (e) {
        return 'Daeon is not running';
    }
}

(async function() {
    console.log(await getStatus())
})();
