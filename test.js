length = 0;

max_length = 10;
min_length = 0;

if (length < max_length) {
    while (length < max_length) {
        length++;
        console.log(length);
    }
} else {
    while (length > min_length) {
        length--;
        console.log(length);
    }
}