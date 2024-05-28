
// 创建包
package samples 
{ 
 public class SampleCode 
 { 
 public var sampleGreeting:String; 
 public function sampleFunction() 
 { 
 trace(sampleGreeting + " from sampleFunction()"); 
 } 
 } 
}

import samples.*;
import samples.SampleCode // 越具体越好，否则类型注释会很冗长
var mySample:samples.SampleCode = new samples.SampleCode();
var mySample:SampleCode = new SampleCode();



const consonant; var a:int=0; trace(a)
/** var variable:type; totype(fromtype)
 * int unint Number Null void String Boolean Array Object Date Error Function RegExp XML XMLList
 * MovieClip TextField SimpleButton
 * 未注释类型undefined :* untyped=any 初始 undefined，可是任意类型
 */
var myBirthday:Date = new Date();


// public、 private、 protected 或 internal
namespace blahblah = "url"; // 命名空间声明，赋值可省
// 默认命名空间 internal，属性或方法声明时，在前面加命名空间
version1 function myFunction() {}
use namespace version1; // 除非切换，否则不能关闭
myFunction(); 
// 或
version1::myFunction(); // 这个就没有关闭问题


// 动态类：实例可以用点符号添加属性和方法，非动态类不能
dynamic class Protean 
{ 
 private var privateGreeting:String = "hi"; 
 public var publicGreeting:String = "hello"; 
 function Protean() 
 { 
 trace("Protean instance created"); 
 } 
}

// 接口
public interface IExternalizable 
{ 
 function writeExternal(output:IDataOutput):void; 
 function readExternal(input:IDataInput):void; 
}
interface IGamma 
{ 
 function doSomething(param:int = 3):void; 
}
class Gamma implements IGamma 
{ 
 public function doSomething(param:int = 4):void {} 
}

// 继承  只要在基类中未使用 private 属性进行声明，就可以由子类继承
class Circle extends Shape 

 // 主时间轴
/** 事件
 * CLICK, DOUBLE_CLICK,MOUSE_UP, MOUSE_DOWN, MOUSE_MOVE, MOUSE_OUT, MOUSE_WHEEL,ROLL_OUT, ROLL_OVER,KeybordEvent.KEY_DOWN, KeybordEvent.KEY_UP
 * 
 * root 主时间轴 parent 父容器 this
 */

/**
 * ? 蓝色 问题
 * ! 红色 警示
 * ^ 黄色 事项
 * ~ 紫色 箭头函数？
 *  TODO 
 * & 粉色 不知道用来做什么的
 * // 删节文本
 */

/**
 * ! 三个基本要素 事件源 事件 响应
 * ? 事件类型：
 */
function eventResponse(eventObject:EventType):void
{
 // Actions performed in response to the event go here.
}
eventSource.addEventListener(EventType.EVENT_NAME, eventResponse);