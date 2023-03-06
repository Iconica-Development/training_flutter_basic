# Forms

### Form Widget
- Form Widget wraps FormFields
- Form is accessible through a key
- Form can validate, reset and save the values..

---
### Form Widget
Setting up the container
```
...
final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
...
 body: Container(
        padding: EdgeInsets.all(20.0),
        child: Form(
          key: this._formKey,
          child: ListView(
            children: <Widget>[
              // We will add fields here.
            ],
          ),
        )
      ),
...
```

---
### Form Widget
Implementing the form
```
 children: <Widget>[
    TextFormField(
    keyboardType: TextInputType.emailAddress, // Use email input type for emails.
    decoration: InputDecoration(
        hintText: 'you@example.com',
        labelText: 'E-mail Address'
    )
    ),
    TextFormField(
    obscureText: true, // Use secure text for passwords.
    decoration: InputDecoration(
        hintText: 'Password',
        labelText: 'Enter your password'
    )
    ),
    Container(
        width: screenSize.width,
        child: RaisedButton(
            child: Text(
            'Login',
            style: TextStyle(
                color: Colors.white
            ),
            ),
            onPressed: () => null,
            color: Colors.blue,
        ),
        margin: EdgeInsets.only(
            top: 20.0
        ),
        )
    ]
```

---
### Form Widget
To validate form entries, use the _formKey...
```
 void submit() {
    // First validate form.
    if (this._formKey.currentState.validate()) {
      _formKey.currentState.save(); // Save our form now.
      print('Email: ${_data.email}');
      print('Password: ${_data.password}');
    }
  }
```

---
### Form Widget
- Validate method calls of Form calls each FormFields validator
- Save method calls each FormFields.onSave function
```
TextFormField(
    obscureText: true, // Use secure text for passwords.
    decoration: InputDecoration(
        hintText: 'Password',
        labelText: 'Enter your password'
    ),
    validator: this._validateEmail, // <- function that implements validation
    onSaved: (String value) {  // <- function that stores the value 
        this._data.password = value;
      }
    )
```

https://www.didierboelens.com/2018/04/hint-4-ensure-a-textfield-or-textformfield-is-visible-in-the-viewport-when-has-the-focus/