var findMedianSortedArrays = function(nums1, nums2) {
    let arr = nums1.concat(nums2);
    arr.sort((a,b) => a-b);
    let len = arr.length;
    if(len % 2 === 0){
        return (arr[len/2] + arr[(len/2)-1])/2;
    } else {
        return arr[Math.floor(len/2)];
    }
};

console.log(findMedianSortedArrays([1,3],[2])); // 2
console.log(findMedianSortedArrays([1,2],[3,4])); // 2.5
console.log(findMedianSortedArrays([0,0],[0,0])); // 0
console.log(findMedianSortedArrays([],[1])); // 1