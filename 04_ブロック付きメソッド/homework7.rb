def arraycalc(array1,array2)
    ans = []
    for i in 0...array1.length
        res = yield array1[i],array2[i]
        ans.push(res)
    end

    return ans
end