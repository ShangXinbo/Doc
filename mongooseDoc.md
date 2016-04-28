# mongoose Doc
## Schema 
* schema映射的是数据库里的集合，它定义集合中文档的数据结构,实际上schema还可以定义instance method和model method
* 实例document有很多固有（build-in）方法，你也可以在schema上为实例添加自定义方法，当自定义方法试图重写固有方法时，会抛出异常。
* 在model上使用schema添加静态（static）方法，可以在model上使用
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
* Options of Schema  TODO
* SchemaTypes   TODO

## Model
model实质上是schema的一个复制，所以要保证在调用.model()前你在schema上的操作都已经结束了。
每一个model都有一个与之对应的链接，当你使用mongoose.model()时，你的model在使用默认的mongoose链接。我们一般都是用默认的链接，当然你可以自定义model对应的链接
## Document
Mongoose documents represent a one-to-one mapping to documents as stored in MongoDB. Each document is an instance of its Model.
document 是mongoDB里的一项数据。每个document都是他对应model的实例。
## Sub_Doc
* sub_document有着正常document的所有特性，唯一不同的是sub_document不能独立保存，只能跟着父文档保存而保存。
* sub_document中间件出现错误时，错误会传递给父文档保存的回掉函数中。
* 每一个document都有一个通过 _id 主键获取doc的方法id（）,子文档也不例外。
```
var doc = parent.children.id(id);
```
* 如果你不需要使用sub_document的实例，那你也要给子文档字段传一个真实的值。
```
var parentSchema = new Schema({
  children: [{ name: 'string' }]
})
```
## Query
model可以通过静态方法实现检索。可以通过两种方式检索：
* 有回掉函数  检索结果会立即传递给回掉函数.
```
var Person = mongoose.model('Person', yourSchema);

Person.findOne({ 'name.last': 'Ghost' }, 'name occupation', function (err, person) {
  if (err) return handleError(err);
  console.log('%s %s is a %s.', person.name.first, person.name.last, person.occupation)
})
```
* 回掉函数是callback(err,result)的格式，查询成功err为null，查询失败result为null.__这里的result根据不同函数返回值有所不同 For findOne() it is a potentially-null single document, find() a list of documents, count() the number of documents, update() the number of documents affected__
* 没有回掉函数 返回一个包含检索实例的query对象,这样你可以使用链式语法来写（chaining syntax）
```
var query = Person.findOne({ 'name.last': 'Ghost' });

query.select('name occupation');

query.exec(function (err, person) {
  if (err) return handleError(err);
  console.log('%s %s is a %s.', person.name.first, person.name.last, person.occupation) // Space Ghost is a talk show host.
})
```
* References //TODO
