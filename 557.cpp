#include <iostream>
#include <string>
#include <vector>
#include <algorithm>

using namespace std;
class Solution
{
	public:
	string reverserWords(string s)
	{
		int len = s.length(); 
		int start =0, slen=0;
		string sresult ="";
		for (int i=0;i<len;++i)
		{
			if(s[i] == ' ')
			{
				string ss=s.substr(start, slen);
				reverse(ss.begin(), ss.end());
				sresult+=ss;
				sresult+=' ';

				start = i+1;
				slen=0;
				
			}
			else
			{
				slen++;
			}

		}
        string ss=s.substr(start, slen);
		reverse(ss.begin(), ss.end());
		sresult+=ss;
		return sresult;
	}
};

int main()
{
	string s="Let's take LeetCode contest";
	Solution so;
	string sresult = so.reverserWords(s);
	cout<<sresult<<endl;
	return 0;
}
