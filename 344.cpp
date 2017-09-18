#include <string>
#include <iostream>
#include <vector>
#include <algorithm>

using namespace std;

class Solution
{
	public:
		string reverseString(string s)
		{
			int len = s.length();
			string sresult="";
			for (int i=len-1;i>=0;i--)
			{
				sresult+=s[i];
			}
			return sresult;
		}
};
