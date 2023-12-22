var searchInsert = function(nums, target) {
    const result = nums.indexOf(target);
    if (result === -1) {
        nums.push(target);
        nums.sort((a, b) => a - b);
        return nums.indexOf(target);
    } else {
        return result;
    }
};

console.log(searchInsert([1,3,5,6], 5)); // 2
console.log(searchInsert([1,3,5,6], 2)); // 1
console.log(searchInsert([1,3,5,6], 7)); // 4