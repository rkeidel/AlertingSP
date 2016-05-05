[#ftl]
<?xml version="1.0" encoding="UTF-8"?>
<!DOCTYPE config SYSTEM "socketconnector.dtd" >
<config>
[#if use_alert]
	<host>${alert.timeseries.socketconnector.host}</host>
	<port>${alert.timeseries.socketconnector.port}</port>
[#else]
	<host>localhost</host>
	<port>2010</port>
[/#if]
	<buffer-size>32768</buffer-size>
	<retry-count>1</retry-count>
	<retry-timeout>5000</retry-timeout>
	<connect-timeout>60000</connect-timeout>
	<write-timeout>5000</write-timeout>
</config>