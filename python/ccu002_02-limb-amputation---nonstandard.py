# CVD-COVID-UK consortium, William N Whiteley, et al., 2024.

import sys, csv, re

codes = [{"code":"XaLsg","system":"nonstandard"},{"code":"XaBYB","system":"nonstandard"},{"code":"Xa7GT","system":"nonstandard"},{"code":"Xa7GY","system":"nonstandard"},{"code":"7L06z","system":"nonstandard"},{"code":"X76p8","system":"nonstandard"},{"code":"Xa7Ge","system":"nonstandard"},{"code":"XaKK7","system":"nonstandard"},{"code":"7L08y","system":"nonstandard"},{"code":"XaBYC","system":"nonstandard"},{"code":"XaBLU","system":"nonstandard"},{"code":"7L063","system":"nonstandard"},{"code":"7L0L2","system":"nonstandard"},{"code":"XE0J8","system":"nonstandard"},{"code":"14N4Z","system":"nonstandard"},{"code":"7L08.","system":"nonstandard"},{"code":"XE0JF","system":"nonstandard"},{"code":"XaBYD","system":"nonstandard"},{"code":"XaBLj","system":"nonstandard"}];
REQUIRED_CODES = 1;
with open(sys.argv[1], 'r') as file_in, open('ccu002_02-limb-amputation-potential-cases.csv', 'w', newline='') as file_out:
    csv_reader = csv.DictReader(file_in)
    csv_writer = csv.DictWriter(file_out, csv_reader.fieldnames + ["ccu002_02-limb-amputation---nonstandard-identified"])
    csv_writer.writeheader();
    codes_identified = 0;
    for row in csv_reader:
        newRow = row.copy();
        for cell in row:
            # Iterate cell lists (e.g. codes)
            for item in re.findall(r'\(([^,]*)\,', row[cell]):
                if(item in list(map(lambda code: code['code'], codes))): codes_identified+=1;
                if(codes_identified>=REQUIRED_CODES):
                    newRow["ccu002_02-limb-amputation---nonstandard-identified"] = "CASE";
                    break;
            if(codes_identified>=REQUIRED_CODES): break;
        if(codes_identified<REQUIRED_CODES):
            newRow["ccu002_02-limb-amputation---nonstandard-identified"] = "UNK";
        codes_identified=0;
        csv_writer.writerow(newRow)
