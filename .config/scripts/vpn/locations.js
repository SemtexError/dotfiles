const exec = require('child_process').exec;

const flags = `
🇦🇨 flag: Ascension Island
🇦🇩 flag: Andorra
🇦🇪 flag: United Arab Emirates
🇦🇫 flag: Afghanistan
🇦🇬 flag: Antigua & Barbuda
🇦🇮 flag: Anguilla
🇦🇱 flag: Albania
🇦🇲 flag: Armenia
🇦🇴 flag: Angola
🇦🇶 flag: Antarctica
🇦🇷 flag: Argentina
🇦🇸 flag: American Samoa
🇦🇹 flag: Austria
🇦🇺 flag: Australia
🇦🇼 flag: Aruba
🇦🇽 flag: Åland Islands
🇦🇿 flag: Azerbaijan
🇧🇦 flag: Bosnia & Herzegovina
🇧🇧 flag: Barbados
🇧🇩 flag: Bangladesh
🇧🇪 flag: Belgium
🇧🇫 flag: Burkina Faso
🇧🇬 flag: Bulgaria
🇧🇭 flag: Bahrain
🇧🇮 flag: Burundi
🇧🇯 flag: Benin
🇧🇱 flag: St. Barthélemy
🇧🇲 flag: Bermuda
🇧🇳 flag: Brunei
🇧🇴 flag: Bolivia
🇧🇶 flag: Caribbean Netherlands
🇧🇷 flag: Brazil
🇧🇸 flag: Bahamas
🇧🇹 flag: Bhutan
🇧🇻 flag: Bouvet Island
🇧🇼 flag: Botswana
🇧🇾 flag: Belarus
🇧🇿 flag: Belize
🇨🇦 flag: Canada
🇨🇨 flag: Cocos (Keeling) Islands
🇨🇩 flag: Congo - Kinshasa
🇨🇫 flag: Central African Republic
🇨🇬 flag: Congo - Brazzaville
🇨🇭 flag: Switzerland
🇨🇮 flag: Côte d’Ivoire
🇨🇰 flag: Cook Islands
🇨🇱 flag: Chile
🇨🇲 flag: Cameroon
🇨🇳 flag: China
🇨🇴 flag: Colombia
🇨🇵 flag: Clipperton Island
🇨🇷 flag: Costa Rica
🇨🇺 flag: Cuba
🇨🇻 flag: Cape Verde
🇨🇼 flag: Curaçao
🇨🇽 flag: Christmas Island
🇨🇾 flag: Cyprus
🇨🇿 flag: Czechia
🇨🇿 flag: Czech
🇩🇪 flag: Germany
🇩🇬 flag: Diego Garcia
🇩🇯 flag: Djibouti
🇩🇰 flag: Denmark
🇩🇲 flag: Dominica
🇩🇴 flag: Dominican Republic
🇩🇿 flag: Algeria
🇪🇦 flag: Ceuta & Melilla
🇪🇨 flag: Ecuador
🇪🇪 flag: Estonia
🇪🇬 flag: Egypt
🇪🇭 flag: Western Sahara
🇪🇷 flag: Eritrea
🇪🇸 flag: Spain
🇪🇹 flag: Ethiopia
🇪🇺 flag: European Union
🇫🇮 flag: Finland
🇫🇯 flag: Fiji
🇫🇰 flag: Falkland Islands
🇫🇲 flag: Micronesia
🇫🇴 flag: Faroe Islands
🇫🇷 flag: France
🇬🇦 flag: Gabon
🇬🇧 flag: United Kingdom
🇬🇧 flag: UK
🇬🇩 flag: Grenada
🇬🇪 flag: Georgia
🇬🇫 flag: French Guiana
🇬🇬 flag: Guernsey
🇬🇭 flag: Ghana
🇬🇮 flag: Gibraltar
🇬🇱 flag: Greenland
🇬🇲 flag: Gambia
🇬🇳 flag: Guinea
🇬🇵 flag: Guadeloupe
🇬🇶 flag: Equatorial Guinea
🇬🇷 flag: Greece
🇬🇸 flag: South Georgia & South Sandwich Islands
🇬🇹 flag: Guatemala
🇬🇺 flag: Guam
🇬🇼 flag: Guinea-Bissau
🇬🇾 flag: Guyana
🇭🇰 flag: Hong Kong SAR China
🇭🇲 flag: Heard & McDonald Islands
🇭🇳 flag: Honduras
🇭🇷 flag: Croatia
🇭🇹 flag: Haiti
🇭🇺 flag: Hungary
🇮🇨 flag: Canary Islands
🇮🇩 flag: Indonesia
🇮🇪 flag: Ireland
🇮🇱 flag: Israel
🇮🇲 flag: Isle of Man
🇮🇳 flag: India
🇮🇴 flag: British Indian Ocean Territory
🇮🇶 flag: Iraq
🇮🇷 flag: Iran
🇮🇸 flag: Iceland
🇮🇹 flag: Italy
🇯🇪 flag: Jersey
🇯🇲 flag: Jamaica
🇯🇴 flag: Jordan
🇯🇵 flag: Japan
🇰🇪 flag: Kenya
🇰🇬 flag: Kyrgyzstan
🇰🇭 flag: Cambodia
🇰🇮 flag: Kiribati
🇰🇲 flag: Comoros
🇰🇳 flag: St. Kitts & Nevis
🇰🇵 flag: North Korea
🇰🇷 flag: South Korea
🇰🇼 flag: Kuwait
🇰🇾 flag: Cayman Islands
🇰🇿 flag: Kazakhstan
🇱🇦 flag: Laos
🇱🇧 flag: Lebanon
🇱🇨 flag: St. Lucia
🇱🇮 flag: Liechtenstein
🇱🇰 flag: Sri Lanka
🇱🇷 flag: Liberia
🇱🇸 flag: Lesotho
🇱🇹 flag: Lithuania
🇱🇺 flag: Luxembourg
🇱🇻 flag: Latvia
🇱🇾 flag: Libya
🇲🇦 flag: Morocco
🇲🇨 flag: Monaco
🇲🇩 flag: Moldova
🇲🇪 flag: Montenegro
🇲🇫 flag: St. Martin
🇲🇬 flag: Madagascar
🇲🇭 flag: Marshall Islands
🇲🇰 flag: North Macedonia
🇲🇱 flag: Mali
🇲🇲 flag: Myanmar (Burma)
🇲🇳 flag: Mongolia
🇲🇴 flag: Macao SAR China
🇲🇵 flag: Northern Mariana Islands
🇲🇶 flag: Martinique
🇲🇷 flag: Mauritania
🇲🇸 flag: Montserrat
🇲🇹 flag: Malta
🇲🇺 flag: Mauritius
🇲🇻 flag: Maldives
🇲🇼 flag: Malawi
🇲🇽 flag: Mexico
🇲🇾 flag: Malaysia
🇲🇿 flag: Mozambique
🇳🇦 flag: Namibia
🇳🇨 flag: New Caledonia
🇳🇪 flag: Niger
🇳🇫 flag: Norfolk Island
🇳🇬 flag: Nigeria
🇳🇮 flag: Nicaragua
🇳🇱 flag: Netherlands
🇳🇴 flag: Norway
🇳🇵 flag: Nepal
🇳🇷 flag: Nauru
🇳🇺 flag: Niue
🇳🇿 flag: New Zealand
🇴🇲 flag: Oman
🇵🇦 flag: Panama
🇵🇪 flag: Peru
🇵🇫 flag: French Polynesia
🇵🇬 flag: Papua New Guinea
🇵🇭 flag: Philippines
🇵🇰 flag: Pakistan
🇵🇱 flag: Poland
🇵🇲 flag: St. Pierre & Miquelon
🇵🇳 flag: Pitcairn Islands
🇵🇷 flag: Puerto Rico
🇵🇸 flag: Palestinian Territories
🇵🇹 flag: Portugal
🇵🇼 flag: Palau
🇵🇾 flag: Paraguay
🇶🇦 flag: Qatar
🇷🇪 flag: Réunion
🇷🇴 flag: Romania
🇷🇸 flag: Serbia
🇷🇺 flag: Russia
🇷🇼 flag: Rwanda
🇸🇦 flag: Saudi Arabia
🇸🇧 flag: Solomon Islands
🇸🇨 flag: Seychelles
🇸🇩 flag: Sudan
🇸🇪 flag: Sweden
🇸🇬 flag: Singapore
🇸🇭 flag: St. Helena
🇸🇮 flag: Slovenia
🇸🇯 flag: Svalbard & Jan Mayen
🇸🇰 flag: Slovakia
🇸🇱 flag: Sierra Leone
🇸🇲 flag: San Marino
🇸🇳 flag: Senegal
🇸🇴 flag: Somalia
🇸🇷 flag: Suriname
🇸🇸 flag: South Sudan
🇸🇹 flag: São Tomé & Príncipe
🇸🇻 flag: El Salvador
🇸🇽 flag: Sint Maarten
🇸🇾 flag: Syria
🇸🇿 flag: Eswatini
🇹🇦 flag: Tristan da Cunha
🇹🇨 flag: Turks & Caicos Islands
🇹🇩 flag: Chad
🇹🇫 flag: French Southern Territories
🇹🇬 flag: Togo
🇹🇭 flag: Thailand
🇹🇯 flag: Tajikistan
🇹🇰 flag: Tokelau
🇹🇱 flag: Timor-Leste
🇹🇲 flag: Turkmenistan
🇹🇳 flag: Tunisia
🇹🇴 flag: Tonga
🇹🇷 flag: Turkey
🇹🇹 flag: Trinidad & Tobago
🇹🇻 flag: Tuvalu
🇹🇼 flag: Taiwan
🇹🇿 flag: Tanzania
🇺🇦 flag: Ukraine
🇺🇬 flag: Uganda
🇺🇲 flag: U.S. Outlying Islands
🇺🇳 flag: United Nations
🇺🇸 flag: United States
🇺🇸 flag: USA
🇺🇾 flag: Uruguay
🇺🇿 flag: Uzbekistan
🇻🇦 flag: Vatican City
🇻🇨 flag: St. Vincent & Grenadines
🇻🇪 flag: Venezuela
🇻🇬 flag: British Virgin Islands
🇻🇮 flag: U.S. Virgin Islands
🇻🇳 flag: Vietnam
🇻🇺 flag: Vanuatu
🇼🇫 flag: Wallis & Futuna
🇼🇸 flag: Samoa
🇽🇰 flag: Kosovo
🇾🇪 flag: Yemen
🇾🇹 flag: Mayotte
🇿🇦 flag: South Africa
🇿🇲 flag: Zambia
🇿🇼 flag: Zimbabwe
🏴󠁧󠁢󠁥󠁮󠁧󠁿 flag: England
🏴󠁧󠁢󠁳󠁣󠁴󠁿 flag: Scotland
🇲🇴 flag: Mac`;

/* 
 * Execute a bash command 
 */
function execute(command)
{
    return new Promise(resolve =>
    {
        exec(command, (_, stdout, __) =>
        { 
            resolve(stdout); 
        });
    });
};

/* 
 * The list is separated in sections.
 * The sections are separated with spaces with unknown lengths.
 * Get the lengths based on the spacing line containing '-' characters
 */
const getSectionLengths = line =>
{
    // Split on a positive look behind space, including spaces in the split
    const lineParts = line.split(/(?<=\s)/);

    const actualLengths = [];
    let lastLength = 0;

    lineParts.forEach(part =>
    {
        // If it start with a '-' it is a new section
        if (part.startsWith('-'))
        {
            actualLengths.push(lastLength);
            lastLength = 0;
            lastLength += part.length;
        }
        else
        {
            lastLength++;
        }
    });

    return actualLengths;
};

/*
 * Get the location parts from each row
 * @param {String[]} locationRows
 * @param {Number[]} lengths
 */
const getLocation = (locationRows, lengths) =>
{
    const locations = {  };

    locationRows.forEach(location =>
    {
        const locationSections = [];
        let index = 0;

        lengths.forEach(length =>
        {
            const section = location.substring(index, index + length).trim();
            index += length;

            // If part is empty
            if (section.length === 0)
            {
                // If the section is bigger then a space, add an empty entry as a placeholder
                if (length > 1)
                {
                    locationSections.push('');
                }
                return;
            }

            locationSections.push(section);
        });

        locations[locationSections[0]] = locationSections[2];
    });

    return locations;
}

/*
 * Try add a country flag to every entry
 */
const addCountryFlags = (locations, countries) =>
{
    Object.keys(locations).forEach(id =>
    {
        const location = locations[id];

        Object.keys(countries).forEach(country =>
        {
            if (!location || !country)
            {
                return;
            }

            if (location.toLowerCase().indexOf(country.toLowerCase()) === -1)
            {
                return;
            }
            
            // Add the flag to the entry
            const flag = countries[country];
            locations[id] = `${flag} ${location}`;
        });
    });
};

/*
 * Parse the country flags
 */
const getCountryFlags = () =>
{
    const countryRows = flags.split('\n').filter(x => x);
    const countries = {  };

    countryRows.forEach(row =>
    {
        const parts = row.split(' ');
        const flag = parts[0].trim();
        const name = parts[2].trim();

        countries[name] = flag;
    });

    return countries;
}

const getResult = async () =>
{    
    let headerRowCount = 2;
    // Get locations from the CLI
    const allLocations = await execute('expressvpn ls all');
    if (allLocations.indexOf('new version') > -1)
    {
        headerRowCount += 1;
    }
    const locationRows = allLocations.split('\n');

    // Get the section with in characters
    const sectionHeaderLine = locationRows[headerRowCount -1];
    const sectionLengths = getSectionLengths(sectionHeaderLine);

    // Remove headers
    const rowOffsetIndex = headerRowCount + 1;
    const rows = locationRows.splice(rowOffsetIndex);
    const locations = getLocation(rows, sectionLengths);

    // Add country flags
    const countries = getCountryFlags();
    addCountryFlags(locations, countries);

    return Object.keys(locations).map(id =>
    {
        return {
            id: id,
            name: locations[id]
        }
    });
};

const main = async () =>
{
    const locations = await getResult ();
    locations.forEach(x => console.log(`${x.id}\t${x.name}`));
};

main();

