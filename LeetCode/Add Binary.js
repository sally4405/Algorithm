// https://leetcode.com/problems/add-binary/

var addBinary = function (a, b) {
  console.log(parseInt(a, 2));
  console.log(BigInt(parseInt(a, 2)));
  console.log();

  console.log(parseInt(b, 2));
  console.log(BigInt(parseInt(b, 2)));
  console.log();

  const c = BigInt(parseInt(a, 2)) + BigInt(parseInt(b, 2));
  console.log(c);
  console.log(c.toString());
  // console.log(c.toString());
  // console.log(
  //   c
  //     .toString()
  //     .slice(0, c.length - 1)
  //     .toString(2)
  // );
  return (BigInt(parseInt(a, 2)) + BigInt(parseInt(b, 2))).toString(2);
};

// const a = "11";
// const b = "1";

const a = "10100000100100110110010000010101111011011001101110111111111101000000101111001110001111100001101";
const b = "110101001011101110001111100110001010100001101011101010000011011011001011101111001100000011011110011";

console.log(addBinary(a, b));
