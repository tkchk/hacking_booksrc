# You need a special version of libnet.
# The one in the repos is wauy too fresh
# https://code.google.com/archive/p/ips-builder/downloads - here's 1.0.2
# 
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
	gcc -o crypt_crack crypt_crack.c -lcrypt
	gcc -o crypt_test crypt_test.c -lcrypt
	gcc -o datatype_sizes datatype_sizes.c
	gcc -o decode_sniff decode_sniff.c -lpcap
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
	gcc -o pcap_sniff pcap_sniff.c -lpcap
	gcc -o pointer pointer.c
	gcc -o pointer_types2 pointer_types2.c
	gcc -o pointer_types3 pointer_types3.c
	gcc -o pointer_types4 pointer_types4.c
	gcc -o pointer_types5 pointer_types5.c
	gcc -o pointer_types pointer_types.c
	gcc -o ppm_crack ppm_crack.c -lcrypt
	gcc -o ppm_gen ppm_gen.c -lcrypt
	gcc -o printable_helper printable_helper.c
	gcc -o rand_example rand_example.c
	gcc -o raw_tcpsniff raw_tcpsniff.c
	gcc -o rst_hijack rst_hijack.c -lnet -lpcap
	gcc -o scope2 scope2.c
	gcc -o scope3 scope3.c
	gcc -o scope scope.c
	gcc -o shroud shroud.c -lnet -lpcap
	gcc -o signal_example signal_example.c
	gcc -o simplenote simplenote.c
	gcc -o simple_server simple_server.c
	gcc -o stack_example stack_example.c
	gcc -o static2 static2.c
	gcc -o static static.c
	gcc -o synflood synflood.c -lnet
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
	rm -f addressof2 addressof addr_struct aslr_demo aslr_execl aslr_execl_exploit auth_overflow2 auth_overflow bind_port bitwise char_array2 char_array commandline convert2 convert crypt_crack crypt_test datatype_sizes decode_sniff dissembler drop_privs dtors_sample errorchecked_heap exec_shell exploit_notesearch exploit_notesearch_env fcntl_flags find_jmpesp firstprog fms fmt_strings fmt_uncommon2 fmt_uncommon fmt_vuln2 fmt_vuln funcptr_example game_of_chance getenvaddr getenv_example heap_example helloworld host_lookup input memory_segments notesearch notetaker overflow_example pcap_sniff pointer pointer_types2 pointer_types3 pointer_types4 pointer_types5 pointer_types ppm_crack ppm_gen printable_helper rand_example raw_tcpsniff rst_hijack scope2 scope3 scope shroud signal_example simplenote simple_server stack_example static2 static synflood time_example2 time_example tinyweb tinywebd tinyweb_exploit2 tinyweb_exploit typecasting uid_demo update_info vuln webserver_id
b: build
c: clean
