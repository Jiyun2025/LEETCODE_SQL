class Solution:
    def containsDuplicate(self, nums: List[int]) -> bool:

        # 중복은 set()  
        seen=set()
        for n in nums: 
            if n in seen :
                return True
            seen.add(n)
        return False



