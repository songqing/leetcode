#include <iostream>
#include <vector>
#include <string>
#include <algorithm>
using namespace std;
class Solution {
public:
	bool hasA(string& s, char a)
	{
		int len = s.length();
		for (int i=0;i<len;++i)
		{
			if (s[i] ==a || s[i] == (a + 'a' -'A'))
				return true;
		}
		return false;
	}
	vector<string> findWords(vector<string>& words)
	{
		int len = words.size();
		vector<string> vresult;
		vector<string> vinit{"qwertyuiop","asdfghjkl","zxcvbnm"};
		int leni = 0;
		int flag=0;
		for (int i=0;i<len;++i)
		{
			if(words[i]=="")
				continue;
			leni=words[i].length();
			flag=0;
			if(hasA(vinit[0], words[i][0]))
			{
				for (int j =0;j<leni;++j)
				{
					if(!hasA(vinit[0],words[i][j])){
						flag=1;break;}
				}
			}
			else if (hasA(vinit[1], words[i][0]))
			{

				for (int j =0;j<leni;++j)
				{
					if(!hasA(vinit[1],words[i][j])){
						flag=1;break;}
				}
			}
			else{

				for (int j =0;j<leni;++j)
				{
					if(!hasA(vinit[2],words[i][j])){
						flag=1;break;}
				}
			}
			if(flag==0)vresult.push_back(words[i]);
		}
		return vresult;
	}
};

int main() 
{
	Solution s;
	vector<string> a{"Hello", "Alaska", "Dad", "Peace"};
	vector<string> s1=s.findWords(a);
	for(int i=0;i<s1.size();++i)
		cout<<s1[i]<<endl;
	return 0;

}

