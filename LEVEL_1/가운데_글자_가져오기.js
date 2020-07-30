// https://programmers.co.kr/learn/courses/30/lessons/12903
// 가운데 글자 가져오기
// 분류 : 연습문제
// 단계 : LEVEL 1
//
// 문제 설명
// 단어 s의 가운데 글자를 반환하는 함수, solution을 만들어 보세요.
// 단어의 길이가 짝수라면 가운데 두글자를 반환하면 됩니다.
//
// 제한사항
// s는 길이가 1 이상, 100이하인 스트링입니다.
//
// 입출력 예
// s	    return
// abcde	c

function solution(s) {
    const isOdd = s.length % 2 == 0;
    const halfIndex = parseInt(s.length / 2);

    return isOdd ? s.slice(halfIndex - 1, halfIndex + 1) : s[halfIndex];
}

const testCases = [
    {
        s: "abcde",
        result: "c",
    },
    {
        s: "qwer",
        result: "we",
    },
];

testCases.forEach((testCase) => {
    console.log(solution(testCase.s) === testCase.result);
});
