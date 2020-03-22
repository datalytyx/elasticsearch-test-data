#!/bin/bash

curl --user elastic:jC8O5jZ0AmYmJYwj0H -X DELETE "http://analysis.swarm.datalytyx.net:9200/needs?pretty" 
python es_test_data.py --es_url=http://analysis.swarm.datalytyx.net:9200 --index_name=needs --dict_file=./words_small.txt --username=elastic --password=jC8O5jZ0AmYmJYwj0H \
	--count=$1 --force_init_index=True --format="need_guid:int:0:9999999999,need_type:text:ventilator-mask-wipes-driver-admin-other:1:1,need_quantity:int:1:1000,need_size:text:small-medium-large:1:1,need_title:dict:5:50,need_description:dict:30:500,need_timestamp:ts,clinician_organisation:text:ChepstowCommunityHospital-CountyHospital-GrangeUniversityHospital-LlanfrechfaGrangeHospital-MaindiffCourtHospital-NevillHallHospital-RoyalGwentHospital:1:1,clinician_name:text:Joe Bloggs-Fred Smith-Dave Jones:1:1,clinician_phone_number:int:01234000000:0123900000,need_fulfilled:text:Yes-No:1:1,full_html:text:<html><head></head><body>foo</body></html>:1:1"


curl --user elastic:jC8O5jZ0AmYmJYwj0H -X DELETE "http://analysis.swarm.datalytyx.net:9200/offers?pretty" 
python es_test_data.py --es_url=http://analysis.swarm.datalytyx.net:9200 --index_name=offers --dict_file=./words_small.txt --username=elastic --password=jC8O5jZ0AmYmJYwj0H \
	--count=$1 --force_init_index=True \
	--format="offer_guid:int:0:9999999999,offer_type:text:ventilator-mask-wipes-driver-admin-other:1:1,offer_quantity:int:1:1000,offer_title:dict:5:50,offer_description:dict:30:500,offer_timestamp:ts,offer_organisation:text:VortexIoT-Datalytyx-Metrici:1:1,offer_contact_name:text:Joe Bloggs-Fred Smith-Dave Jones:1:1,offer_contact_phone_number:int:01234000000:0123900000,offer_finished:text:Yes-No:1:1,full_html:text:<html><head></head><body>foo</body></html>:1:1"
