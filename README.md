# copy-mutableCopy
	  iOS中有可变对象与不可变对象，可变集合与不可变的集合，而对于这些可变对象与可变集合来说，复制也是一个开发中一个要注意的点

### 1.对象（NSString）
对象 |     copy  | mutableCopy
-------------------|-----------------------|--------------
NSString 			 | 浅复制（不可变）| 深复制（可变）
NSutableString | 深复制（不可变）| 深复制（可变）
  
### 2.集合（NSArray，NSSet，NSDictionary）
集合|copy|mutablecopy
----|----|---
NSArray|浅复制（不可变）|深复制（可变）
NSMutableArray|单层深复制（不可变）|单层深复制（可变）

