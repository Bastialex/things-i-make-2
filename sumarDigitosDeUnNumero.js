function solution(n) {
        var num1 = n+"";
        let res = 0;
        
        num1.split('').forEach(num1 => res += parseInt(num1));
        
        return res;
}
