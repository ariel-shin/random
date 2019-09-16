import re,sys

if (sys.argv < 2):
   print("Usage: hashmatch.py inputfile")

usernames = []
hashes = []
with open(sys.argv[1]) as f:
   for line in f:
       # print line
       x = re.search("^.*(?=::)", line)
       if x.group(0) not in usernames:
       		usernames.append(x.group(0))
                hashes.append(line)
                print line,
       if 'str' in line:
          break

# Example Hash (ntlmv2): 
# admin::N46iSNekpT:08ca45b7d7ea58ee:88dcbe4446168966a153a0064958dac6:5c7830315c7830310000000000000b45c67103d07d7b95acd12ffa11230e0000000052920b85f78d013c31cdb3b92f5d765c783030
