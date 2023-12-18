class Solution {
public:
    bool isPalindrome(long long x) {
        if(x<0){
            return false;
        }
        long long  x2=x;
        long long  num=0,xy;

        while(x){
            num=(num*10)+(x%10);
            x=x/10;
        }
        if(num==x2){
            return true;
        }
        else{
            return false;
        }
    }
};