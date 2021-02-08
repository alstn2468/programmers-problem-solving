# https://programmers.co.kr/learn/courses/30/lessons/42860
# 조이스틱
# 분류 : 탐욕법
# 단계 : LEVEL 2

def solution(name):
    change = [min(ord(char) - ord('A'), ord('Z') - ord(char) + 1) for char in name]
    idx, result = 0, 0
    while True:
        result += change[idx]
        change[idx] = 0
        if sum(change) == 0:
            return result
        left, right = 1, 1
        while change[idx - left] == 0:
            left += 1
        while change[right + idx] == 0:
            right += 1
        result += left if left < right else right
        idx += -left if left < right else right
