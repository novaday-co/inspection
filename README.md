<p align="center">
<img src="https://raw.githubusercontent.com/faridfr/inspection/master/assets/inspection_header.png" height="170" alt="Flutter Inspection Package" />
</p>

<p align="center">
<a href="https://pub.dev/packages/inspection"><img src="https://img.shields.io/pub/v/inspection.svg" alt="Pub"></a>
<a href="https://opensource.org/licenses/MIT"><img src="https://img.shields.io/badge/license-MIT-purple.svg" alt="License: MIT"></a>
</p>


---


# Inspection

With **Inspection** you can validate your inputs in **Flutter** & **Dart** like **Laravel Framework**.

## How to install :

Add this to your package's pubspec.yaml file:

```yaml
dependencies:
  inspection: ^0.0.10
```

Then You can install packages from the command line:
```yaml
$ pub get
```

or

```yaml
$ flutter pub get
```

Alternatively, your editor might support flutter pub get. Check the docs for your editor to learn more.

Now in your Dart code, you can use:

```dart
import 'package:inspection/inspection.dart';
```

## Basic Usage :

You have a form , you want to validate inputs everyday in programming . With **Inspection** you can validate your inputs in **Dart** like **Laravel Framework** . See examples below .

You expect a required number with many conditions and rules :
In this case , we get help from **Inspection** helper function .

```dart
  TextFormField(
    validator: (input) => inspection(input, 'required|numeric|between:2000,6000|contains:22,33,55|ends_with:0'),
  ),
```

You can use **Inspection** class :

```dart
  TextFormField(
    validator: (input) => Inspection().inspect(input, 'required|float'),
  ),
```

And you can use helper function and **Inspection** class with **List** of rules , so you can make a global validation configuration List and you can change your rules in whole of the application whenever you want.

```dart
  TextFormField(
    validator: (input) => inspection(input, ['required','float']),
  ),
```

or 

```dart
TextFormField(
    validator: (input) => inspec(input, ['required','float']),
  ),
```

## Options :
You can set attribute **name** , custom **message** and **locale** . For example :

```dart
TextFormField(
    validator: (input) => inspec(input, 'required|float',message: 'my custom message here !'),
  ),
```


## Rules :


| Rule       	| Description                         	| Example                     	|
|------------	|-------------------------------------	|-----------------------------	|
| have_alpha 	| The attribute must have alpha in it 	| inspect(input,'have_alpha') 	|
| alpha_num	 	| The attribute must contains only letters and numbers 	| inspect(input,'alpha_num')	|
| between	 	| The attribute must be between :min and :max 	| inspect(input,'between:3,9')	 	|
| contains	 	| The attribute must contains one of your worlds 	| inspect(input,'contains:farid,farhad')	 	|
| email	 		| The attribute is not a valid email 	| inspect(input,'email')	 	|
| ends_with	 	| The attribute must ends with your pattern 	| inspect(input,'ends_with:bye')	|
| gt	 		| The attribute must grater than :gt 	| inspect(input,'gt:10')	 		|
| gte	 		| The attribute must grater than or equal to :gte 	| inspect(input,'gte:10')	 		|
| hex	 		| The attribute must be a valid hex code 	| inspect(input,'hex')	 		|
| in	 		| The attribute must be one of options in your list	| inspect(input,'in:farid,farhad,john')	 		|
| ip	 		| The attribute must be a valid IP 	| inspect(input,'ip')	 		|
| lt	 		| The attribute must be less than :lt 	| inspect(input,'lt:100')	 		|
| lte	 		| The attribute must be less than or equal to :lte 	| inspect(input,'lte:100')	 		|
| max	 		| The attribute must have maximum :max character 	| inspect(input,'max:10')	 		|
| min	 		| The attribute must have at least :min character 	| inspect(input,'min:3')	 		|
| not_in	 	| The attribute must not exists in list :not_in 	| inspect(input,'not_in:saman,ahmad')	 	|
| numeric	 	| The attribute must be a number	| inspect(input,'numeric') 		|
| alpha	 		| The attribute must contains only letters 	| inspect(input,'alpha') 		|
| float	 		| The attribute must be float 	| inspect(input,'float') 		|
| integer	 	| The attribute must be integer 	| inspect(input,'integer') 		|
| number	 	| The attribute must contains only number 	| inspect(input,'number') 		|
| regex	 		| The attribute must match with regex 	| inspect(input,'regex:\^[a-zA-Z0-9]') 		|
| required	 	| The attribute field is required 	| inspect(input,'required') 	|
| starts_with	| The attribute must starts with your pattern 	| inspect(input,'starts_with:hi') 	|
| url	 		| The attribute must be a valid url 	| inspect(input,'url') 			|


## Locales :

**Inspection** supports two languages now . **English** with code : **en** , and **Persian** with code **fa** . You can set locale when initialize **inspection** or in optional parameter of **inspect** method. For example : 

```dart
  TextFormField(
    validator: (input) => Inspection(inspectionLocale : 'fa').inspect(input, 'required|in:farid,farhad'),
  ),
```

or

```dart
  TextFormField(
    validator: (input) => Inspection().inspect(input, 'required|in:farid,farhad',locale:'fa'),
  ),
```

## Custom Rules :
You can simply extend from **Inspection** class and develop your custom rule . For example :

```dart
class CustomInspection extends Inspection {
  String myCustomRule(ruleString, inspectionCase) {
    switch (ruleString) {
      case 'myCustomRule':
        // Your conditional codes here or copy from a Rule class and change it to your own . 
        return MyCustomeRuleClass(inspectionCase).stringValidation();
    }
    return null;
  }
}
```

## Contribute :
You can help me and contribute for :
- New rules
- More locales
- Better exceptions
