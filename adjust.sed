# msgctxt is not used in Sphinx version of the whitepaper
/^msgctxt.*/d

# Strip itemized mark (and leading spaces)
s/msgid " *\* /msgid "/
s/msgstr " *\* /msgstr "/
s/msgid " *[1-9]\. /msgid "/
s/msgstr " *[1-9]\. /msgstr "/
# Strip leading spaces
s/  *"$/"/
# Strip unnecessary tabs
s/\\t//
# Convert multiple consecutive spaces into a single space
s/   */ /g

# Convert titles
s|msgid "INTRODUCTION"|msgid "Introduction"|
s|msgid "WHAT IS CLOUD EDGE COMPUTING?"|msgid "What is Cloud Edge Computing?"|
s|msgid "A DEEPER EXPLORATION OF EDGE COMPUTING CONSIDERATIONS"|msgid "A Deeper Exploration of Edge Computing Considerations"|
s|msgid "EXPLORING CHARACTERISTICS AND USE CASES"|msgid "Exploring Characteristics"|
s|msgid "USE CASES"|msgid "Use Cases"|
s|msgid "SCENARIOS"|msgid "Scenarios"|
s|msgid "CHALLENGES"|msgid "Challenges"|
s|msgid "CONCLUSION AND CALL TO ACTION"|msgid "Conclusion and Call to Action"|

# Handle unmatching strings
s/the ability to support a dynamic pool of multiple potentially widely distributed sites,/The ability to support a dynamic pool of multiple potentially widely distributed sites,/
s/potentially unreliable network connections, and/Potentially unreliable network connections, and/
s/the likelihood of difficult-to-resolve resource constraints at sites across the network./The likelihood of difficult-to-resolve resource constraints at sites across the network./
s/The Edge Computing Group/The OSF Edge Computing Group/g

# Handle URLs in RST version
s|on the OpenStack Edge Computing web page|on the `OpenStack Edge Computing <https://www.openstack.org/edge-computing/>`__ web page|
s|Visit openstack.org to get started with OpenStack|Visit `openstack.org <https://www.openstack.org/>`__ to get started with OpenStack|
s|OpenStack events (https://www.openstack.org/community/events/)|OSF events (https://www.openstack.org/community/events/)|
s|msgid "OpenStack Summit"|msgid "`OpenStack Open Infrastructure Summit <https://www.openstack.org/summit/>`__"|
s|Fog/Edge/Massively Distributed Clouds (FEMDC) SIG|`Fog/Edge/Massively Distributed Clouds (FEMDC) SIG <https://wiki.openstack.org/wiki/Fog_Edge_Massively_Distributed_Clouds>`__|
s|IRC meetings (online)|IRC `meetings <http://eavesdrop.openstack.org/#Massively_Distributed_Clouds_Meeting>`__ (online)|
s|OpenStack Edge Computing web page|`OSF Edge Computing web page <https://www.openstack.org/edge-computing/>`__|
s|OpenStack Edge Computing mailing list|`OSF Edge Computing mailing list <http://lists.openstack.org/cgi-bin/mailman/listinfo/edge-computing>`__|

# Finally drop empty msgid (because an empty msgid means PO headers)
10,${
  /^msgid ""/d
  /^msgstr ""/d
}
