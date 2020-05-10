# https://programmers.co.kr/learn/courses/30/lessons/42883
# 큰 수 만들기
# 분류 : 탐욕법(Greedy)
# 단계 : LEVEL 2
#
# 문제 설명
# 어떤 숫자에서 k개의 수를 제거했을 때 얻을 수 있는 가장 큰 숫자를 구하려 합니다.
# 예를 들어, 숫자 1924에서 수 두 개를 제거하면 [19, 12, 14, 92, 94, 24] 를 만들 수 있습니다.
# 이 중 가장 큰 숫자는 94 입니다.
# 문자열 형식으로 숫자 number와 제거할 수의 개수 k가 solution 함수의 매개변수로 주어집니다.
# number에서 k 개의 수를 제거했을 때 만들 수 있는 수 중 가장 큰 숫자를 문자열 형태로 return 하도록 solution 함수를 완성하세요.
#
# 제한 조건
# number는 1자리 이상, 1,000,000자리 이하인 숫자입니다.
# k는 1 이상 number의 자릿수 미만인 자연수입니다.
#
# 입출력 예
# number	    k	return
# 1924	        2	94
# 1231234	    3	3234
# 4177252841	4	775841


def solution(number, k):
    result = []

    for i, num in enumerate(number):
        while result and result[-1] < num and k > 0:
            result.pop()
            k -= 1

        if k == 0:
            result += number[i:]
            break

        result.append(num)
    result = result[: len(result) - k] if k > 0 else result

    return "".join(result)


test_cases = [
    {"number": "1924", "k": 2, "expected_value": "94"},
    {"number": "1231234", "k": 3, "expected_value": "3234"},
    {"number": "4177252841", "k": 4, "expected_value": "775841"},
    {"number": "87654321", "k": 3, "expected_value": "87654"},
]

for test_case in test_cases:
    number, k, expected_value = (
        test_case["number"],
        test_case["k"],
        test_case["expected_value"],
    )

    print(solution(number, k) == expected_value)
