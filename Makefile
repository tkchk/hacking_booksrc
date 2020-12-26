# echo -e "build:" >> Makefile
# ls | grep c$ | awk -F'.' '{print $1}' | while read line; do echo -e "\tgcc -o $line $line.c" >> Makefile; done
# echo -e "clean:" >> Makefile
# ls | grep c$ | awk -F'.' '{print $1}' | while read line; do echo -e "\trm -f $line" >> Makefile; done
build:
	gcc -o addressof2 addressof2.c
	gcc -o addressof addressof.c
	gcc -o addr_struct addr_struct.c
	gcc -o aslr_demo aslr_demo.c
	gcc -o aslr_execl aslr_execl.c
	gcc -o aslr_execl_exploit aslr_execl_exploit.c
	gcc -o auth_overflow2 auth_overflow2.c
	gcc -o auth_overflow auth_overflow.c
	gcc -o bind_port bind_port.c
	gcc -o bitwise bitwise.c
	gcc -o char_array2 char_array2.c
	gcc -o char_array char_array.c
	gcc -o commandline commandline.c
	gcc -o convert2 convert2.c
	gcc -o convert convert.c
	gcc -o crypt_crack crypt_crack.c
	gcc -o crypt_test crypt_test.c
	gcc -o datatype_sizes datatype_sizes.c
	gcc -o decode_sniff decode_sniff.c
	gcc -o dissembler dissembler.c
	gcc -o drop_privs drop_privs.c
	gcc -o dtors_sample dtors_sample.c
	gcc -o errorchecked_heap errorchecked_heap.c
	gcc -o exec_shell exec_shell.c
	gcc -o exploit_notesearch exploit_notesearch.c
	gcc -o exploit_notesearch_env exploit_notesearch_env.c
	gcc -o fcntl_flags fcntl_flags.c
	gcc -o find_jmpesp find_jmpesp.c
	gcc -o firstprog firstprog.c
	gcc -o fms fms.c
	gcc -o fmt_strings fmt_strings.c
	gcc -o fmt_uncommon2 fmt_uncommon2.c
	gcc -o fmt_uncommon fmt_uncommon.c
	gcc -o fmt_vuln2 fmt_vuln2.c
	gcc -o fmt_vuln fmt_vuln.c
	gcc -o funcptr_example funcptr_example.c
	gcc -o game_of_chance game_of_chance.c
	gcc -o getenvaddr getenvaddr.c
	gcc -o getenv_example getenv_example.c
	gcc -o heap_example heap_example.c
	gcc -o helloworld helloworld.c
	gcc -o host_lookup host_lookup.c
	gcc -o input input.c
	gcc -o memory_segments memory_segments.c
	gcc -o notesearch notesearch.c
	gcc -o notetaker notetaker.c
	gcc -o overflow_example overflow_example.c
	gcc -o pcap_sniff pcap_sniff.c
	gcc -o pointer pointer.c
	gcc -o pointer_types2 pointer_types2.c
	gcc -o pointer_types3 pointer_types3.c
	gcc -o pointer_types4 pointer_types4.c
	gcc -o pointer_types5 pointer_types5.c
	gcc -o pointer_types pointer_types.c
	gcc -o ppm_crack ppm_crack.c
	gcc -o ppm_gen ppm_gen.c
	gcc -o printable_helper printable_helper.c
	gcc -o rand_example rand_example.c
	gcc -o raw_tcpsniff raw_tcpsniff.c
	gcc -o rst_hijack rst_hijack.c
	gcc -o scope2 scope2.c
	gcc -o scope3 scope3.c
	gcc -o scope scope.c
	gcc -o shroud shroud.c
	gcc -o signal_example signal_example.c
	gcc -o simplenote simplenote.c
	gcc -o simple_server simple_server.c
	gcc -o stack_example stack_example.c
	gcc -o static2 static2.c
	gcc -o static static.c
	gcc -o synflood synflood.c
	gcc -o time_example2 time_example2.c
	gcc -o time_example time_example.c
	gcc -o tinyweb tinyweb.c
	gcc -o tinywebd tinywebd.c
	gcc -o tinyweb_exploit2 tinyweb_exploit2.c
	gcc -o tinyweb_exploit tinyweb_exploit.c
	gcc -o typecasting typecasting.c
	gcc -o uid_demo uid_demo.c
	gcc -o update_info update_info.c
	gcc -o vuln vuln.c
	gcc -o webserver_id webserver_id.c
clean:
	rm -f addressof2
	rm -f addressof
	rm -f addr_struct
	rm -f aslr_demo
	rm -f aslr_execl
	rm -f aslr_execl_exploit
	rm -f auth_overflow2
	rm -f auth_overflow
	rm -f bind_port
	rm -f bitwise
	rm -f char_array2
	rm -f char_array
	rm -f commandline
	rm -f convert2
	rm -f convert
	rm -f crypt_crack
	rm -f crypt_test
	rm -f datatype_sizes
	rm -f decode_sniff
	rm -f dissembler
	rm -f drop_privs
	rm -f dtors_sample
	rm -f errorchecked_heap
	rm -f exec_shell
	rm -f exploit_notesearch
	rm -f exploit_notesearch_env
	rm -f fcntl_flags
	rm -f find_jmpesp
	rm -f firstprog
	rm -f fms
	rm -f fmt_strings
	rm -f fmt_uncommon2
	rm -f fmt_uncommon
	rm -f fmt_vuln2
	rm -f fmt_vuln
	rm -f funcptr_example
	rm -f game_of_chance
	rm -f getenvaddr
	rm -f getenv_example
	rm -f heap_example
	rm -f helloworld
	rm -f host_lookup
	rm -f input
	rm -f memory_segments
	rm -f notesearch
	rm -f notetaker
	rm -f overflow_example
	rm -f pcap_sniff
	rm -f pointer
	rm -f pointer_types2
	rm -f pointer_types3
	rm -f pointer_types4
	rm -f pointer_types5
	rm -f pointer_types
	rm -f ppm_crack
	rm -f ppm_gen
	rm -f printable_helper
	rm -f rand_example
	rm -f raw_tcpsniff
	rm -f rst_hijack
	rm -f scope2
	rm -f scope3
	rm -f scope
	rm -f shroud
	rm -f signal_example
	rm -f simplenote
	rm -f simple_server
	rm -f stack_example
	rm -f static2
	rm -f static
	rm -f synflood
	rm -f time_example2
	rm -f time_example
	rm -f tinyweb
	rm -f tinywebd
	rm -f tinyweb_exploit2
	rm -f tinyweb_exploit
	rm -f typecasting
	rm -f uid_demo
	rm -f update_info
	rm -f vuln
	rm -f webserver_id
b: build
c: clean
