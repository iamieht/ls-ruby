






### Launch School Thread

Hi, I'm on Lesson 2.I'm trying to understand the difference between Pass-by-Object-Reference and Pass-by-Value & Pass-by-Reference. I drew some stuff to try to conceptualize it, but I'm not sure if I'm understanding it correctly. Can anyone confirm?Okay, so a question related to this came up in a 109 assessment prep & the Lesson 2 quiz, and my brain isn't leaving it alone. ![:sob:](https://a.slack-edge.com/production-standard-emoji-assets/14.0/apple-medium/1f62d@2x.png) I guess thinking about going into the assessments without really understanding what PBOR is making me a little uncomfortable (Lesson 3 seems like it's mostly actual coding).I'm imagining that PBOR is going to be described more in a later lesson, but I got "stuck" again hyper-focusing on something because I couldn't make heads or tails of it in my brain - perhaps because as a newbie, my brain has nothing to reference in trying to understand these sorts of concepts yet.At my first read-through I was very confused because I'm not familiar enough with the way the terms involved (value, copy, object, reference, etc.) are used.Like this part from the "Pass by Reference vs Pass by Value" article:  

> Its behavior is described as _pass by object reference_ as you are actually passing a reference to the object (**value**) rather than a copy of the object itself.

I'm getting confused about what "value" is/is referring to here.I thought Python uses Pass-by-Reference but with a caveat or something. I didn't realize that PBOR is a separate/different strategy altogether until I started Googling.The code snippet examples I used in the drawings are what was in the [removed] article, I think, are only supposed to be just **_models_** to describe the concepts, not _actual_ Python behavior.  
(I probably should have changed `list` to something else because lists being mutable makes things confusing. ![:woman-shrugging:](https://a.slack-edge.com/production-standard-emoji-assets/14.0/apple-medium/1f937-200d-2640-fe0f@2x.png))Anyways, this is my understanding so far:

def do_nothing(foo):
    foo

foo = random_value
do_nothing(foo)

print(foo)

**PASS-BY-VALUE**

- What is passed into the function as an argument is a COPY (so JUST the value of the original object), not the object itself.

- The `foo` variable inside the function a NEW variable separate from the original `foo` variable.

- The object that the new `foo` refers to is also a new object.

- So whatever you do to `foo` inside the function does NOT reflect on the original `foo` variable.

**PASS-BY-REFERENCE**  

- What is passed into the function as an argument is a DIRECT REFERENCE/POINTER to the original object.

- The `foo` inside the function and the original `foo` are essentially aliases for each other.

- So whatever you do to `foo` from within the function will ALSO reflect on original `foo`.

**PASS-BY-OBJECT-REFERENCE (How Python actually works.)**

- Similar to PBR, a DIRECT REFERENCE/POINTER to the original `foo` is passed into the function as an argument.

- BUT unlike PBR, the `foo` variable inside the function is NOT a reference to the original `foo`; It's a new, separate variable - similar to PBV.

- BUT unlike PBV, the object being referenced by the new `foo` is the ORIGINAL object referenced by the original `foo`.

- Both the new `foo` and the original `foo` refer to the same object in memory.

- Whether an operation within changes the original `foo` depends on the mutability of the object it's referring to.

- IF the object is MUTABLE, the operation can mutate the original object.

- IF the object is IMMUTABLE, the operation doesn't do anything to the original object, and instead, a new object is created.

Was the article/is my understanding wrong? I'm guessing I should just disregard the entire thing about PBOR since it's not LS material?

You’re on the right track with PBV and PBR, however, Python is always PBOR. I noticed your example was in Python and passing in a list for PBV, which can be a bit confusing.In other languages like JavaScript, primitive values like strings, numbers, etc., are PBV. A copy of the value is passed to the function, and changes inside the function don’t affect the original variable.

function addValue(val) {
    val += 10;
}

let x = 5;
addValue(x);
console.log(x); // 5

For mutable objects like arrays or objects, they are PBR. The function gets a reference to the same object, so changes inside the function affect the original object.  

function addToArray(arr) {
    arr.push(10);
}

let myArray = [1, 2, 3];
addToArray(myArray);
console.log(myArray); // [1, 2, 3, 10]

Python always uses PBOR. The function gets a reference to the same object, and whether the object itself changes depends on its mutability.Great illustrations by the way! Reminds me of the Head First Textbooks

[@Derek](https://launchschool.slack.com/team/U03SMTF0T54) You're right, I should have changed it from the original examples shown in the removed article. ![:sob:](https://a.slack-edge.com/production-standard-emoji-assets/14.0/apple-medium/1f62d@2x.png)Ooh that is so interesting that that's how it's managed in JavaScript! ![:astonished:](https://a.slack-edge.com/production-standard-emoji-assets/14.0/apple-medium/1f632@2x.png)You explaining that so succinctly & comparing to JS made something "click" in my head.Thank you for taking the time to reply & the compliment! ![:pray:](https://a.slack-edge.com/production-standard-emoji-assets/14.0/apple-medium/1f64f@2x.png) I've never heard of "Head First" books, they look intriguing.

Nice work, Derek.This topic is very confusing in nearly every language. It's one of those topics that programmers debate heatedly and bitterly online. Is [Language of the day] PBR or PBV? The debates can go on for months with no conclusion, only to resume again a few months later.In the end, it's my personal opinion that it doesn't matter in languages that actually use PBOR, like Python and Ruby, and just focus on whether you **can** mutate a specific argument. If you can mutate the argument, then the language is acting like it is PBR with respect to that argument (note that you don't necessarily have to mutate the argument - the deciding factor is whether it is possible to do so at all). If you can't mutate it, then the language is acting like PBV with respect to that argument.In languages that use PBOR, individual arguments are either mutable or immutable. That's the only factor that matters in the end, and the reason why I focus on whether you can mutate an argument.

I did not know that that was such a hotly debated topic! Interesting.So, I will think of it as: PBR for mutable, PBV for immutable, don't worry too much about the innerworkings.Thank you, Pete, that gives me the structure I needed to figure out where the concepts should go in my head.