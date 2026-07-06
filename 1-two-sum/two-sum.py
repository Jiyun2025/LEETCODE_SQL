class Solution:
    def twoSum(self, nums: List[int], target: int) -> List[int]:
        # hashmap 
        seen = {} # dictionary for saving 
        for i, n in enumerate(nums):
            need = target-n
            # 과거 숫자 중에서  need : 7 이 있었나 확인
            if need in seen :
                return [seen[need], i]
            # 없으면 현재 key 와 value 딕셔너리 추가 
            seen[n] = i
