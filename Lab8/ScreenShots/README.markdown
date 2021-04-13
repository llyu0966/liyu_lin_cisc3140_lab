# Format Phone Number

A Pen created on CodePen.io. Original URL: [https://codepen.io/llyu0966/pen/ZELxOWO](https://codepen.io/llyu0966/pen/ZELxOWO).

The objective of this Lab is to build a phone input field in Javascript. The first thing is to start creating an input field in the index.html and add the id attribute with a value of "phone" to hook up the formatting function later. And the onkeypress event occurs when user presses a key on the keyboard. 

`<input type="text"
               id="phone"
               onkeypress="return keyPress(event)"/>`
               
To format the input and set the value of the textbox with the formatted value, we need to retrieve the value from the text input first. For example,

`var myInput = document.getElementById('phone');`

To validate the text input, we need
1. a condition to ignore entries beyond 10 digits; 
2. a replace function to ignore extra "-" character; 
3. a condition to notice the user to enter digits only;

To format a phone number while the user types. For example, when 3 characters have been entered, a "-" will append the input to yield "XXX-":

`if(value.length >= 3 && value.length < 6)
value = value.slice(0,3) + "-" + value.slice(3);`

When 6 characters have been entered, another "-" will append the input to yield "XXX-XXX-":

`else if(value.length >= 6)
value = value.slice(0,3) + "-" + value.slice(3,6) + "-" + value.slice(6);`

And finally, if 10 digits have been entered, it will clear the input and start formatting a new phone number:

`myInput.value = formattedPhoneNumber.length <= 11 ? formattedPhoneNumber : "";`
