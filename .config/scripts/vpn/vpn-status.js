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
        if (!result) {
            return 'An invalid command result';
        }

        const lines = result.split('\n');

        if (lines.length === 0) {
            return 'An invalid result';
        }

        let locationIndex = 0;
        if (result.indexOf('A new version') > -1) {
            locationIndex = 1;
        }

        const location = removeColors(lines[locationIndex]).trim();

        if (location.indexOf('Unable to connect') > -1) {
            return 'Unable to connect';
        }

        if (location.indexOf('Unable to connect') > -1) {
            return 'Unable to connect';
        }

        return location.replace(/^Connected to /gi, '');

    }
    catch (e) {
        return 'Daeon is not running';
    }
}

(async function() {
    console.log(await getStatus())
})();
