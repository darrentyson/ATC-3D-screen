fixNames <- function(x)
{
unlist(sapply(x, function(i) switch(i,
    '115' = 'WM115',
    '164'='WM164',
    '2664'='WM2664',
    'W88'='WM88',
    '88'='WM88',
    '983B' = 'WM983B',
    '2058'='A2058',
    '375'='A375',
    'SK5'='SKMEL5',
    'SKMEL5.1'='SKMEL5c1',
    'SKMEL5.10'='SKMEL5c10',
    'SKMEL5.7'='SKMEL5c7',
    '4006'='HCC4006',
    '149'='SUM149',
    '827'='HCC827',
    '1975'='NCIH1975',
    'H1975'='NCIH1975',
    '231' = 'MDAMB231',
    '453' = 'MDAMB453',
    '468' = 'MDAMB468',
    '1143' = 'HCC1143',
    '10ARFP' = 'MCF10A-VU',
    '10A-R' = 'MCF10A-VU',
    '10ACh' = 'MCF10A-HMS',
    '10A-C' = 'MCF10A-HMS',
    'MCF10ACH2' = 'MCF10A-HMS',
    'MCF10A.Ch2' = 'MCF10A-HMS',
    "MCF10A.RFP1" = 'MCF10A-VU',
    "MCF10ARFP1" = 'MCF10A-VU',
    '1799' = 'WM1799',
    'HCC3255' = 'NCIH3255',
    '3255' = 'NCIH3255',
    'H3255' = 'NCIH3255',
    '3311' = 'WM3311',
    'SK28' = 'SKMEL28',
    'SK2' = 'SKMEL2',
    'SK28' = 'SKMEL28',
    'SK19' = 'SKMEL19',
    '793' = 'WM793',
    '3122' = 'NCIH3122',
    'H3122' = 'NCIH3122',
    '460' = 'NCIH460',
    'H460' = 'NCIH460',
    'DU' = 'DU145',
    '1118' = 'II18',
    'PC9.1' = 'PC9c1',
    'DS3' = 'PC9-DS3',
    'DS7' = 'PC9-DS7',
    'DS8' = 'PC9-DS8',
    'DS9' = 'PC9-DS9',
    'BR1' = 'PC9-BR1',
    'MGH' = 'PC9-MGH',
    'MGHd' = 'PC9-MGH',
    'PC9.1' = 'PC9c1',
    i
)))
}

fixDrugNames <- function(x)
{
    x <- tolower(x)
    # remove salts from names (keep only first 'word')
    x <- sapply(x, function(z) unlist(strsplit(z,' ')[[1]])[1])
    # remove extra characters from 4'-epiadriamycin
    x <- gsub("[\\'-]","",x)
    unlist(sapply(x, function(i) switch(i,
        "antibiotic" = "antibioticFR901228",
        "tcs"="TCS7066",
        i
    )))
}

# standard colnames (exclude ch2 info since not always used for same information)
std_colnames <- c('expt.id','expt.date','plate.name','plate.id','well','uid','cell.line','time',
        'drug1','drug1.conc','drug1.units','cell.count','image.time')
