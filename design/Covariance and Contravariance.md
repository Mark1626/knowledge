# Covariance and Contravariance

### Ported from my old blog

Dated - 2018-12-03

### Design Guideline 2 - Covariant and Contravariance

<!-- truncate -->

### Variance

Variance refers to how subtyping between more complex types relates to subtyping between their components.

Consider this class

```java
	class AnimalShelter {
        Animal getAnimalForAdoption() {
          ...
        }
    
        void putAnimal(Animal animal) {
          ...
        }
    }
```

#### Covariant Return Type

This is **present in Java, but not in C#**, personally it made me to rethink my design, however the need for
variance can be removed.

```java
	class CatShelter extends AnimalShelter {
        Cat getAnimalForAdoption() {
    	    return new Cat();
        }
    }
```

#### Covariant method argument type

This is **not present in Java and C#**, this would allow to send the object as derived class directly instead of 
up-casting to base class. This is not type safe as by up-casting to Base class, you can send any other derived class.
*ie) Within the CatShelter one can add a Dog Object*

```java
	class CatShelter extends AnimalShelter {
        void putAnimal(Cat animal) {
           ...
        }
    }
```

#### Contravariant method argument type

It is type safe to allow an overriding method to accept a more general argument.

```java
	class CatShelter extends AnimalShelter {
        void putAnimal(Object animal) {
           ...
        }
    }
```

| Language                                          | Argument type | Return type |
|---------------------------------------------------|---------------|-------------|
| C++ (since 1998), Java (since J2SE 5.0), Scala, D | Invariant     | Covariant   |
| C#	                                            | Contravariant	| Covariant   |

#### Problem with variance

Since variance switches between languages, it is easy to forget which variance is present

## Avoiding the need for covariant argument types by the use of generics

The following code will behave the same in both Java and C#

```java
	class Shelter<T extends Animal> {
        T getAnimalForAdoption() {
          ...
        }
    
        void putAnimal(T animal) {
          ...
        }
    }
    
    
    class CatShelter extends Shelter<Cat> {
        Cat getAnimalForAdoption() {
          ...
        }
    
        void putAnimal(Cat animal) {
          ...
        }
    }

```

#### References
- https://en.wikipedia.org/wiki/Covariance_and_contravariance_(computer_science)
