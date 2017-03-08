// Make a function to take a string as a parameter
function reverse(str) {
	var c = 0
	var reverse = []
// Reverse the string in the parameter
for (var i = str.length; i >= 0; i--) {
	reverse[c] = str[i];
	c+=1;
}
// Bring back the word in reverse
return reverse.join('');
}

// Driver Code
if (1 == 1){
	console.log(reverse("unicorn"));
	console.log(reverse("break"));
	console.log(reverse("asphalt"));
	console.log(reverse("California"));
}