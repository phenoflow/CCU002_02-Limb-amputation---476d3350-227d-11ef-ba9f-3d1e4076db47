# CVD-COVID-UK consortium, William N Whiteley, et al., 2024.

import sys, csv, re

codes = [{"code":"XE0JB","system":"nonstandard"},{"code":"7L072","system":"nonstandard"},{"code":"7L073","system":"nonstandard"},{"code":"XE0JD","system":"nonstandard"},{"code":"XE0JC","system":"nonstandard"},{"code":"XaJhA","system":"nonstandard"}];
REQUIRED_CODES = 1;
with open(sys.argv[1], 'r') as file_in, open('ccu002_02-limb-amputation-potential-cases.csv', 'w', newline='') as file_out:
    csv_reader = csv.DictReader(file_in)
    csv_writer = csv.DictWriter(file_out, csv_reader.fieldnames + ["ccu002_02-limb-amputation-metatarsal---nonstandard-identified"])
    csv_writer.writeheader();
    codes_identified = 0;
    for row in csv_reader:
        newRow = row.copy();
        for cell in row:
            # Iterate cell lists (e.g. codes)
            for item in re.findall(r'\(([^,]*)\,', row[cell]):
                if(item in list(map(lambda code: code['code'], codes))): codes_identified+=1;
                if(codes_identified>=REQUIRED_CODES):
                    newRow["ccu002_02-limb-amputation-metatarsal---nonstandard-identified"] = "CASE";
                    break;
            if(codes_identified>=REQUIRED_CODES): break;
        if(codes_identified<REQUIRED_CODES):
            newRow["ccu002_02-limb-amputation-metatarsal---nonstandard-identified"] = "UNK";
        codes_identified=0;
        csv_writer.writerow(newRow)
