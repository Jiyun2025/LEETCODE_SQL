class Solution:
    def majorityElement(self, nums: List[int]) -> int:
        count={}
        for n in nums:
             # frequncy count[n] = count.get(n,0) + 1 ( n이 나온 횟수를 1 증가시킨다)
            count[n] = count.get(n,0) + 1
            if count[n] > len(nums)/2 : 
                return n
                   