class Solution:
    def isAnagram(self, s: str, t: str) -> bool:
        count= {}
        #각 문자 갯수 더해서 총 갯수 확인
        for c in s : 
            count[c]=count.get(c,0)+1
        #각 문자의 갯수 다시 빼서 0이 되어야 똑같은 문자 수 가지고 있는것임 
        for c in t : 
            count[c]=count.get(c,0)-1
        #확인하는 절차 
        for value in count.values():
            if value != 0:
                return False

        return True

        