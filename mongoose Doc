# mongoose Doc
## Schema 
* schema映射的是数据库里的集合，它定义集合中文档的数据结构,实际上schema还可以定义instance method和module method
* 实例document有很多固有（build-in）方法，你也可以在schema上为实例添加自定义方法，当自定义方法试图重写固有方法时，会抛出异常。
* 在module上使用schema添加静态（static）方法，可以在moudule上使用
* Virtuals 虚拟字段,一般用于格式化现有字段，例如一个schema有两个字段，我们要使用两个字段的串接，可以直接使用virtuals将两个字段的串接作为值返回，有get方法和set方法。
```
//get
personSchema.virtual('name.full').get(function () {
  return this.name.first + ' ' + this.name.last;
});

personSchema.virtual('name.full').set(function (name) {
  var split = name.split(' ');
  this.name.first = split[0];
  this.name.last = split[1];
});
mad.name.full = 'Breaking Bad';
console.log(mad.name.first); // Breaking
console.log(mad.name.last);  // Bad

```
* Options of Schema  //TODO
* SchemaTypes   //TODO
## Module
