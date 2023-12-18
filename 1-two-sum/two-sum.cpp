class Solution
{

public:
    map<int, int> mp = {};
    vector<int> twoSum(vector<int> &nums, int target)
    {
        vector<int> ans, check;

        check = nums;
        for (int i = 0; i < nums.size(); i++)
        {
            mp[check[i]] = i;
            check[i] = check[i] - target;
        }
        for (int i = 0; i < nums.size(); i++)
        {
            if (mp[(-check[i])] && i!=mp[(-check[i])])
            {
                ans.push_back(i);
                ans.push_back(mp[(-check[i])]);
                break;
            }
        }
        return ans;
    }
};