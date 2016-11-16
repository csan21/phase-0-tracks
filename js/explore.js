// Pseudo 

// Function will take a string
// For each character in the string, it is inserted into a new string from a decrementing loop
// The output is the reversed version of the string

function reverse(string) {
  var reversedVersion = '';
  for (var i = string.length - 1; i >= 0; i--)
    reversedVersion += string[i];
  return reversedVersion;
}

reversed_string = reverse("hello")

if (1 == 1) {
	console.log(reversed_string);
}